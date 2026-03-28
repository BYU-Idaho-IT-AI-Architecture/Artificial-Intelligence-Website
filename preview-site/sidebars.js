/** @type {import('@docusaurus/plugin-content-docs').SidebarsConfig} */
const sidebars = {
  mainSidebar: [
    { type: 'doc', id: 'home', label: 'Home' },
    {
      type: 'category',
      label: 'Best Practices',
      link: { type: 'doc', id: 'Best-Practices/best-practices' },
      items: [
        'Best-Practices/sycophancy',
        'Best-Practices/hallucination',
        'Best-Practices/managing-context',
      ],
    },
    {
      type: 'category',
      label: 'Learn About AI',
      link: { type: 'doc', id: 'Learn-About-AI/learn-about-ai' },
      items: ['Learn-About-AI/how-llms-are-trained'],
    },
    {
      type: 'category',
      label: 'Teaching with AI',
      link: { type: 'doc', id: 'Teaching-with-AI/academics' },
      items: [
        'Teaching-with-AI/ai-in-academics',
        'Teaching-with-AI/academic-integrity',
        'Teaching-with-AI/ai-in-the-syllabus',
        'Teaching-with-AI/grading-with-ai',
      ],
    },
    {
      type: 'category',
      label: 'Protecting Your Data',
      link: { type: 'doc', id: 'Data-Privacy/protecting-data' },
      items: [
        'Data-Privacy/data-privacy',
        'Data-Privacy/data-usage-guide',
        'Data-Privacy/copyright',
      ],
    },
    {
      type: 'category',
      label: 'Working with AI',
      link: { type: 'doc', id: 'Working-with-AI/working-with-ai' },
      items: ['Working-with-AI/getting-started'],
    },
    {
      type: 'doc',
      id: 'Learning-with-AI/learning-with-ai',
      label: 'Learning with AI',
    },
    {
      type: 'category',
      label: 'Resources',
      link: { type: 'doc', id: 'Resources/approved-tools' },
      items: [
        'Resources/chatgpt',
        'Resources/copilot',
        'Resources/gemini',
      ],
    },
  ],
};

export default sidebars;
