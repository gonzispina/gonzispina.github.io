(() => {
  'use strict';
  const page = document.body.dataset.page || 'main';
  const configs = {
    main: { main: 'index.html', projects: 'projects/index.html', cv: 'Gonzalo_Spina_CV.pdf', sections: [['Beginning','#top'],['Profile','#profile'],['Education','#education'],['Experience','#experience'],['Projects','#projects'],['Earlier Experience','#earlier-experience'],['Consulting','#consulting'],['Skills','#skills']] },
    projects: { main: '../index.html', projects: 'index.html', cv: '../Gonzalo_Spina_CV.pdf', sections: [] },
    emg: { main: '../index.html', projects: 'index.html', cv: '../Gonzalo_Spina_CV.pdf', repo: 'https://github.com/gonzispina/emg-finger-prediction', sections: [['Beginning','#top'],['Instrument','#instrument'],['Pipeline','#pipeline'],['Evidence','#evidence'],['Demo','#demo'],['Limits','#limits']] },
    olfactory: { main: '../index.html', projects: 'index.html', cv: '../Gonzalo_Spina_CV.pdf', repo: 'https://github.com/gonzispina/olfactory-circuit-glm', sections: [['Beginning','#top'],['Overview','#overview'],['Model','#model'],['Identity','#identity'],['Coupling','#coupling'],['Conclusion','#conclusion']] },
    diffusions: { main: '../index.html', projects: 'index.html', cv: '../Gonzalo_Spina_CV.pdf', repo: 'https://github.com/gonzispina/calculo-estocastico', sections: [['Beginning','#top'],['Goal','#problem'],['Diffusions','#forward'],['Reverse time','#reverse'],['Score','#score'],['Training','#training'],['Demo','#demo'],['References','#references']] }
  };
  const cfg = configs[page] || configs.main;
  const external = ' target="_blank" rel="noopener"';
  const nav = document.querySelector('[data-site-header]');
  if (nav) {
    nav.outerHTML = `<header class="top"><div class="top-inner"><a class="brand" href="${cfg.main}">Gonzalo Spina <span>· ${page === 'emg' ? 'selected work' : page === 'main' ? 'curriculum vitae' : 'projects'}</span></a><nav aria-label="Site navigation"><a href="${cfg.main}">Main</a><a href="${cfg.projects}">Projects</a><a href="${cfg.cv}"${page === 'main' ? ' download' : external}>Download CV</a><a href="https://www.linkedin.com/in/gonzalospina"${external}>LinkedIn</a></nav><button id="theme-toggle" type="button" aria-pressed="false">◐ Tema oscuro</button></div>${cfg.sections.length ? `<nav class="article-nav" aria-label="Page sections">${cfg.sections.map(([label, href]) => `<a href="${href}">${label}</a>`).join('')}</nav>` : ''}</header>`;
  }
  const footer = document.querySelector('[data-site-footer]');
  if (footer) {
    const repo = cfg.repo ? ` · <a href="${cfg.repo}"${external}>Repository</a>` : '';
    const backHref = page === 'projects' ? cfg.main : cfg.projects;
    const backLabel = page === 'projects' ? '← Back to Main' : '← Back to Projects';
    footer.outerHTML = page === 'main'
      ? `<footer class="cv-footer"><span>Gonzalo Josue Spina · Buenos Aires, Argentina</span><nav aria-label="CV links"><a href="${cfg.projects}">Projects</a><a href="${cfg.cv}" download>Download CV</a><a href="https://www.linkedin.com/in/gonzalospina"${external}>LinkedIn</a></nav></footer>`
      : `<footer><p><a href="${backHref}">${backLabel}</a>${repo} · <a href="${cfg.cv}"${external}>Download CV</a> · <a href="https://www.linkedin.com/in/gonzalospina"${external}>LinkedIn</a></p></footer>`;
  }
})();
