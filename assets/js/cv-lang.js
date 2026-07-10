/* CV language toggle: switches between the ko/en blocks rendered by
 * _includes/cv.html and remembers the choice in localStorage.
 * No translation dictionary here — both languages are pre-rendered
 * server-side from _data/cv/{ko,en}.yml; this file only flips visibility.
 */
(() => {
  const STORAGE_KEY = 'cv-lang';
  const root = document.getElementById('cv-page');

  if (!root) {
    return;
  }

  const buttons = root.querySelectorAll('[data-cv-set-lang]');

  function applyLang(lang) {
    root.setAttribute('data-cv-lang', lang);
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
