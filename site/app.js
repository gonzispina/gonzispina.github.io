class GithubLink extends HTMLElement {
  connectedCallback() {
    const href = this.getAttribute('href') || 'https://github.com';
    const label = this.getAttribute('label') || 'View source on GitHub';
    this.innerHTML = `<a class="github-link" href="${href}" target="_blank" rel="noopener noreferrer"><svg aria-hidden="true" width="18" height="18" viewBox="0 0 16 16" fill="currentColor"><path d="M8 0a8 8 0 0 0-2.53 15.59c.4.07.55-.17.55-.38v-1.49c-2.23.49-2.7-.95-2.7-.95-.36-.93-.89-1.18-.89-1.18-.73-.5.06-.49.06-.49.81.06 1.23.83 1.23.83.72 1.23 1.88.87 2.34.67.07-.52.28-.87.51-1.07-1.78-.2-3.65-.89-3.65-3.96 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.13 0 0 .67-.21 2.2.82A7.64 7.64 0 0 1 8 4.8a7.6 7.6 0 0 1 2 .27c1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.93.08 2.13.51.56.82 1.28.82 2.15 0 3.08-1.88 3.76-3.67 3.96.29.25.54.73.54 1.48v2.2c0 .21.14.46.55.38A8 8 0 0 0 8 0Z"/></svg><span>${label}</span></a>`;
  }
}
if (!customElements.get('github-link')) customElements.define('github-link', GithubLink);

(() => {
  const button = document.querySelector('#theme-toggle');
  if (!button) return;
  const setTheme = (dark) => {
    document.documentElement.dataset.theme = dark ? 'dark' : 'light';
    button.textContent = dark ? '◐ Tema claro' : '◐ Tema oscuro';
    button.setAttribute('aria-pressed', String(dark));
  };
  setTheme(localStorage.getItem('portfolio-theme') === 'dark');
  button.addEventListener('click', () => {
    const dark = document.documentElement.dataset.theme !== 'dark';
    localStorage.setItem('portfolio-theme', dark ? 'dark' : 'light');
    setTheme(dark);
  });

  const imageLinks = document.querySelectorAll('.setup-photos a');
  if (!imageLinks.length) return;
  const lightbox = document.createElement('div');
  lightbox.className = 'lightbox';
  lightbox.setAttribute('role', 'dialog');
  lightbox.setAttribute('aria-modal', 'true');
  lightbox.setAttribute('aria-label', 'Expanded setup image');
  lightbox.innerHTML = '<button class="lightbox-close" type="button" aria-label="Close image">×</button><img alt="">';
  document.body.appendChild(lightbox);
  const expanded = lightbox.querySelector('img');
  const close = () => { lightbox.classList.remove('is-open'); document.body.classList.remove('no-scroll'); };
  imageLinks.forEach((link) => link.addEventListener('click', (event) => {
    event.preventDefault();
    const source = link.querySelector('img');
    expanded.src = link.href;
    expanded.alt = source ? source.alt : '';
    lightbox.classList.add('is-open');
    document.body.classList.add('no-scroll');
  }));
  lightbox.addEventListener('click', (event) => { if (event.target === lightbox || event.target === close) close(); });
  document.addEventListener('keydown', (event) => { if (event.key === 'Escape') close(); });
})();
