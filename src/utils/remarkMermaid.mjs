function escapeHtml(str) {
  return str
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;');
}

function walk(node) {
  if (!node || !Array.isArray(node.children)) return;
  for (let i = 0; i < node.children.length; i++) {
    const child = node.children[i];
    if (child.type === 'code' && child.lang === 'mermaid') {
      const escaped = escapeHtml(child.value.trim());
      node.children[i] = {
        type: 'html',
        value: `<div class="mermaid-diagram"><pre class="mermaid" data-mermaid-src="${escaped}">${escaped}</pre></div>`,
      };
    } else {
      walk(child);
    }
  }
}

export function remarkMermaid() {
  return (tree) => {
    walk(tree);
  };
}
