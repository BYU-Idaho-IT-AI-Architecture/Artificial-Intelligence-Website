#!/usr/bin/env bash
# ██████╗ ██╗   ██╗██╗   ██╗      ██╗██████╗  █████╗ ██╗  ██╗ ██████╗
# ██╔══██╗╚██╗ ██╔╝██║   ██║      ██║██╔══██╗██╔══██╗██║  ██║██╔═══██╗
# ██████╔╝ ╚████╔╝ ██║   ██║█████╗██║██║  ██║███████║███████║██║   ██║
# ██╔══██╗  ╚██╔╝  ██║   ██║╚════╝██║██║  ██║██╔══██║██╔══██║██║   ██║
# ██████╔╝   ██║   ╚██████╔╝      ██║██████╔╝██║  ██║██║  ██║╚██████╔╝
# ╚═════╝    ╚═╝    ╚═════╝       ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# export-docx.sh - Convert Website/ Markdown files to .docx for University Communications
#
# Usage:
#   ./export-docx.sh              Export ALL pages
#   ./export-docx.sh --since TAG  Export only pages changed since TAG (git tag, branch, or commit)
#   ./export-docx.sh --since HEAD~3   Changes in last 3 commits
#
# Options:
#   --since REF   Only export files changed since the given git ref.
#                 A CHANGES.docx cover sheet is included listing what changed.
#   --all         Export all pages (default when --since is omitted)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/Website"
OUTPUT_DIR="$SCRIPT_DIR/export"
ZIP_NAME="ai-website-content-$(date +%Y%m%d).zip"
SINCE_REF=""
MODE="all"

# Parse arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --since)
            SINCE_REF="$2"
            MODE="changed"
            shift 2
            ;;
        --all)
            MODE="all"
            shift
            ;;
        *)
            echo "Unknown option: $1"
            echo "Usage: ./export-docx.sh [--since REF] [--all]"
            exit 1
            ;;
    esac
done

if ! command -v pandoc &>/dev/null; then
    echo "Error: pandoc is required but not installed."
    echo "Install with: brew install pandoc"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Website/ directory not found at $SOURCE_DIR"
    exit 1
fi

# If --since is used, validate the git ref
if [ "$MODE" = "changed" ]; then
    if ! git -C "$SCRIPT_DIR" rev-parse --verify "$SINCE_REF" &>/dev/null; then
        echo "Error: '$SINCE_REF' is not a valid git ref."
        echo "Examples: --since v1.0, --since HEAD~5, --since abc1234"
        exit 1
    fi
fi

# Clean previous export
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# Build file list
if [ "$MODE" = "changed" ]; then
    echo "Comparing against: $SINCE_REF"
    echo ""

    # Get changed Website/*.md files (Added, Modified, Renamed-to)
    mapfile -t changed_files < <(
        git -C "$SCRIPT_DIR" diff --name-only --diff-filter=AMR "$SINCE_REF" -- 'Website/*.md' 'Website/**/*.md' \
        | sort
    )

    # Also include any uncommitted changes to Website/*.md
    mapfile -t uncommitted_files < <(
        git -C "$SCRIPT_DIR" diff --name-only -- 'Website/*.md' 'Website/**/*.md' 2>/dev/null;
        git -C "$SCRIPT_DIR" diff --name-only --cached -- 'Website/*.md' 'Website/**/*.md' 2>/dev/null
    )

    # Merge and deduplicate
    mapfile -t all_changed < <(printf '%s\n' "${changed_files[@]}" "${uncommitted_files[@]}" | sort -u | grep -v '^$')

    if [ ${#all_changed[@]} -eq 0 ]; then
        echo "No Website/ content has changed since $SINCE_REF."
        exit 0
    fi

    # Build the cover sheet with change details
    cover_md="$OUTPUT_DIR/_CHANGES.md"

    # Pass 1: Changed Pages table
    {
        echo "# Content Changes"
        echo ""
        echo "Exported: $(date '+%B %d, %Y')"
        echo ""
        echo "---"
        echo ""
        echo "## Changed Pages"
        echo ""
        echo "| Page | Change Type |"
        echo "|------|-------------|"

        for f in "${all_changed[@]}"; do
            status=$(git -C "$SCRIPT_DIR" diff --name-status "$SINCE_REF" -- "$f" 2>/dev/null | head -1 | cut -f1)
            case "$status" in
                A) change_type="New" ;;
                M) change_type="Modified" ;;
                R*) change_type="Renamed" ;;
                *) change_type="Updated" ;;
            esac
            page_name="${f#Website/}"
            echo "| ${page_name%.md} | $change_type |"
        done

        # Pass 2: Summary of Changes (commit messages per file)
        echo ""
        echo "---"
        echo ""
        echo "## Summary of Changes"
        echo ""

        for f in "${all_changed[@]}"; do
            page_name="${f#Website/}"
            page_label="${page_name%.md}"

            # Get commit messages that touched this file since the ref
            mapfile -t file_commits < <(
                git -C "$SCRIPT_DIR" log --format='%s' "$SINCE_REF"..HEAD -- "$f" 2>/dev/null
            )

            # Check for uncommitted changes
            has_uncommitted=false
            if ! git -C "$SCRIPT_DIR" diff --quiet -- "$f" 2>/dev/null; then
                has_uncommitted=true
            fi

            echo "**${page_label}**"
            echo ""

            # Print commit messages as bullet points
            has_commits=false
            for msg in "${file_commits[@]}"; do
                [ -z "$msg" ] && continue
                echo "- ${msg}"
                has_commits=true
            done

            if [ "$has_uncommitted" = true ]; then
                echo "- Includes uncommitted edits"
            fi

            if [ "$has_commits" = false ] && [ "$has_uncommitted" = false ]; then
                echo "- No description available"
            fi

            echo ""
        done
    } > "$cover_md"

    # Convert cover sheet to docx
    pandoc "$cover_md" -f markdown -t docx -o "$OUTPUT_DIR/CHANGES.docx"
    rm "$cover_md"
    echo "  Created:   CHANGES.docx (cover sheet)"

    # Convert only changed files
    converted=0
    for f in "${all_changed[@]}"; do
        md_file="$SCRIPT_DIR/$f"
        [ -f "$md_file" ] || continue

        rel_path="${f#Website/}"
        rel_dir="$(dirname "$rel_path")"
        base_name="$(basename "$rel_path" .md)"
        docx_file="$OUTPUT_DIR/$rel_dir/$base_name.docx"

        mkdir -p "$OUTPUT_DIR/$rel_dir"

        if pandoc "$md_file" -f markdown -t docx -o "$docx_file" 2>/dev/null; then
            echo "  Converted: $rel_path"
            converted=$((converted + 1))
        else
            echo "  Skipped:   $rel_path"
        fi
    done

    echo ""
    echo "Done. $converted changed file(s) exported + CHANGES.docx cover sheet."

else
    # Export all files
    converted=0
    skipped=0

    while IFS= read -r md_file; do
        rel_path="${md_file#"$SOURCE_DIR/"}"
        rel_dir="$(dirname "$rel_path")"
        base_name="$(basename "$rel_path" .md)"
        docx_file="$OUTPUT_DIR/$rel_dir/$base_name.docx"

        mkdir -p "$OUTPUT_DIR/$rel_dir"

        if pandoc "$md_file" -f markdown -t docx -o "$docx_file" 2>/dev/null; then
            echo "  Converted: $rel_path"
            converted=$((converted + 1))
        else
            echo "  Skipped (error): $rel_path"
            skipped=$((skipped + 1))
        fi
    done < <(find "$SOURCE_DIR" -name '*.md' -type f | sort)

    echo ""
    echo "Done. $converted files converted, $skipped skipped."
fi

# Create zip
(cd "$OUTPUT_DIR" && zip -r "$SCRIPT_DIR/$ZIP_NAME" . -x '*.DS_Store') >/dev/null

echo "Output:  $OUTPUT_DIR/"
echo "Zip:     $ZIP_NAME"
