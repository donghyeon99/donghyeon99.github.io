# Portfolio Visual Redesign Implementation Plan

**Goal:** Replace the Chirpy blog chrome with a polished academic-engineering portfolio interface while preserving the current bilingual content and detailed project evidence.

**Architecture:** Add a self-contained portfolio layout used by pages and project documents. Keep the existing Jekyll collections and YAML data as the content source, then style all routes through one responsive design system.

**Tech Stack:** Jekyll, Liquid, SCSS, vanilla JavaScript

## Global Constraints

- No commit or push before user review.
- Use existing project photography and diagrams; do not ship placeholder SVG illustrations.
- Keep Korean/English switching and existing URLs.
- Home remains a concise dashboard; project pages retain technical depth.
- Responsive navigation and readable mobile tables are required.

### Task 1: Portfolio shell

- [ ] Add a full-document portfolio layout with top navigation, SEO metadata, footer, and mobile menu.
- [ ] Point pages and project collection defaults to the new layout.

### Task 2: Home and project discovery

- [ ] Rebuild Home with concise identity, evidence, featured work, and current experience.
- [ ] Rebuild Projects as an image-led portfolio index with category filters expressed through visual grouping.

### Task 3: Detail, About, and CV surfaces

- [ ] Style existing project Markdown into an editorial case-study layout.
- [ ] Recompose About into a factual timeline and project map.
- [ ] Restyle CV without changing its structured YAML content.

### Task 4: Verification

- [ ] Build locally and run content checks.
- [ ] Inspect Home, Projects, a representative project, About, and CV at desktop and mobile widths.
- [ ] Leave all changes uncommitted and open the finished local page for review.
