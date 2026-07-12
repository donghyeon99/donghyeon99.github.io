/* Language toggle: switches between the ko/en .lang-block elements inside
 * every .lang-page wrapper on the page and remembers the choice in
 * localStorage ('cv-lang' — shared by CV, About and project pages).
 * No translation dictionary here — both languages are pre-rendered
 * server-side; this file only flips visibility (see _sass/custom/_lang.scss).
 * Loaded by _includes/lang-toggle.html; the guard below makes a duplicate
 * <script> tag harmless.
 */
(() => {
  if (window.__cvLangInit) {
    return;
  }
  window.__cvLangInit = true;

  const STORAGE_KEY = 'cv-lang';
  const roots = document.querySelectorAll('.lang-page');

  if (!roots.length) {
    return;
  }

  const buttons = document.querySelectorAll('.lang-page [data-cv-set-lang]');

  function applyLang(lang) {
    roots.forEach((root) => {
      root.setAttribute('data-cv-lang', lang);
    });
    buttons.forEach((btn) => {
      btn.setAttribute('aria-pressed', String(btn.dataset.cvSetLang === lang));
    });
  }

  function setLang(lang) {
    applyLang(lang);
    try {
      localStorage.setItem(STORAGE_KEY, lang);
    } catch (err) {
      /* localStorage unavailable (e.g. private browsing) — ignore */
    }
  }

  let savedLang = null;
  try {
    savedLang = localStorage.getItem(STORAGE_KEY);
  } catch (err) {
    savedLang = null;
  }

  if (savedLang === 'ko' || savedLang === 'en') {
    applyLang(savedLang);
  }

  buttons.forEach((btn) => {
    btn.addEventListener('click', () => {
      setLang(btn.dataset.cvSetLang);
    });
  });
})();
