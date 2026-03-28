// @ts-check

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'BYU-Idaho Artificial Intelligence',
  tagline: 'Content Preview',
  favicon: 'img/favicon.ico',

  url: 'https://byu-idaho-it-ai-architecture.github.io',
  baseUrl: '/Artificial-Intelligence-Website/',

  organizationName: 'BYU-Idaho-IT-AI-Architecture',
  projectName: 'Artificial-Intelligence-Website',
  trailingSlash: false,

  onBrokenLinks: 'ignore',

  markdown: {
    hooks: {
      onBrokenMarkdownLinks: 'ignore',
    },
  },

  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          path: '../Website',
          routeBasePath: '/',
          sidebarPath: './sidebars.js',
          exclude: ['navbar.md', 'footer.md'],
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        title: 'BYU-Idaho AI',
        items: [
          { to: '/Best-Practices', label: 'Best Practices', position: 'left' },
          { to: '/Learn-About-AI', label: 'Learn About AI', position: 'left' },
          { to: '/Teaching-with-AI', label: 'Teaching with AI', position: 'left' },
          { to: '/Data-Privacy', label: 'Protecting Your Data', position: 'left' },
          { to: '/Working-with-AI', label: 'Working with AI', position: 'left' },
          { to: '/Learning-with-AI/learning-with-ai', label: 'Learning with AI', position: 'left' },
          { to: '/Resources', label: 'Resources', position: 'left' },
        ],
      },
      footer: {
        style: 'dark',
        copyright: 'Content preview for internal review. Not the production site.',
      },
    }),
};

export default config;
