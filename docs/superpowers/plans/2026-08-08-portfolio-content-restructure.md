# Portfolio Content Restructure Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** CV는 빠르게 훑을 수 있고 프로젝트 페이지는 면접에서 기술 깊이를 설명할 수 있도록, 기존 사실과 증빙을 보존하면서 정보 계층·제목·문체·레이아웃을 재구성한다.

**Architecture:** Jekyll의 기존 YAML 데이터와 Markdown 프로젝트 컬렉션을 유지한다. CV는 `_includes/cv.html`이 구조화된 `outcome`, `details`, `tech` 데이터를 렌더링하고, 프로젝트는 공통 SCSS 컴포넌트를 사용하되 각 페이지의 기술 제목은 고유하게 유지한다. 별도 JavaScript 프레임워크나 신규 의존성은 추가하지 않는다.

**Tech Stack:** Jekyll, Liquid, YAML, Markdown, SCSS, Docker 기반 Ruby/Jekyll 로컬 빌드

## Global Constraints

- 문서와 현재 사이트에 없는 사실·수치·성과를 생성하지 않는다.
- 골프카트 기간은 `2025.06 ~ 2026.02`, ROBIT 시작은 `2019.01`로 유지한다.
- GPA는 공개하지 않는다.
- 회사 프로젝트의 비공개 수치를 추정하지 않는다.
- AI 생성 골프카트 이미지를 사용하지 않는다.
- 전문연구요원 표기는 LUXROBO 역할 줄에만 유지한다.
- 국문은 명사형 종결을 유지하되 `작업. 변수. 구조. 과제.` 같은 과압축을 피한다.
- 영문은 완전 문장과 동사 시작 불릿을 혼합하고 연속적인 `-ing` 분사구를 피한다.
- KOR/ENG 정보량과 섹션 순서를 대응시킨다.
- 현재 미커밋 상태의 `_data/cv/ko.yml`, `_data/cv/en.yml` Details 내용은 삭제하지 않고 구조화한다.
- `.bkit/`은 모든 커밋에서 제외한다.
- Docker 실행 중 생성된 `Gemfile.lock` 변경은 원래 상태로 복원하고 콘텐츠 커밋에 포함하지 않는다.

---

## File Structure

- Modify: `_data/cv/ko.yml` — 국문 CV의 outcome, 구조화된 details, 핵심 tech
- Modify: `_data/cv/en.yml` — 영문 CV의 동일 구조와 자연스러운 영문 카피
- Modify: `_includes/cv.html` — 언어별 제목, outcome, 구조화된 details, tech 렌더링
- Modify: `_sass/custom/_cv.scss` — CV 계층, 접힘 영역, 모바일 레이아웃
- Modify: `_sass/custom/_projects.scss` — 프로젝트 상단 요약, 지표, 기술 흐름, 타임라인 스타일
- Modify: `_projects/golf-cart-autonomous-driving.md` — 골프카트 기술 제목과 본문 재배치
- Modify: `_projects/smart-parking-system.md` — 스마트주차 서버·이벤트 구조 중심 재배치
- Modify: `_projects/oafmcl-humanoid-localization.md` — FMCL·Odometry-NN·실험 중심 재배치
- Modify: `_projects/multi-uav-formation-control.md` — 제어 구조·실험 지표 중심 재배치
- Modify: `_projects/robit-humanoid.md` — 대회 타임라인과 팀 도구 중심 재배치
- Modify: `_projects/smart-caddy-robot.md` — GPS·PF·Min-Depth·검증 흐름 중심 재배치
- Create: `scripts/check-portfolio-content.ps1` — 수치·기간·언어 블록·메타 제목 금지 검증

---

### Task 1: Baseline Guard and Content Validation Script

**Files:**
- Create: `scripts/check-portfolio-content.ps1`
- Restore: `Gemfile.lock`

**Interfaces:**
- Consumes: `_data/cv/*.yml`, `_projects/*.md`
- Produces: exit code `0` when fixed facts and structural invariants are preserved; non-zero with actionable messages otherwise

- [ ] **Step 1: Restore the Docker-only lockfile change**

Run:

```powershell
git diff -- Gemfile.lock
git restore -- Gemfile.lock
```

Expected: `Gemfile.lock` no longer appears in `git status --short`.

- [ ] **Step 2: Create the validation script with current invariants**

The script must assert:

```powershell
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot

function Assert-Contains([string]$path, [string]$pattern, [string]$message) {
  $text = Get-Content -LiteralPath $path -Raw
  if ($text -notmatch $pattern) { throw "$message ($path)" }
}

Assert-Contains "$root/_data/cv/ko.yml" '2025\.06 ~ 2026\.02' '골프카트 기간 변경'
Assert-Contains "$root/_data/cv/en.yml" '2025\.06 ~ 2026\.02' 'Golf-cart period changed'
Assert-Contains "$root/_data/cv/ko.yml" 'Engineer · 전문연구요원' '전문연구요원 표기 누락'
Assert-Contains "$root/_data/cv/en.yml" 'Technical Research Personnel' 'Military-service context missing'
Assert-Contains "$root/_projects/oafmcl-humanoid-localization.md" '0\.0474' 'OAFMCL RTAMSE 누락'
Assert-Contains "$root/_projects/oafmcl-humanoid-localization.md" '0\.0687' 'OAFMCL kidnapping result 누락'
Assert-Contains "$root/_projects/multi-uav-formation-control.md" '±0\.2' 'UAV formation error 누락'
Assert-Contains "$root/_projects/multi-uav-formation-control.md" '0\.8974' 'UAV baseline MSE 누락'
Assert-Contains "$root/_projects/smart-caddy-robot.md" '500Hz' '캐디 전류 제어 주기 누락'
Assert-Contains "$root/_projects/robit-humanoid.md" '대상\(대통령상\)' 'ROBIT 대통령상 누락'

Get-ChildItem "$root/_projects/*.md" | ForEach-Object {
  $text = Get-Content $_.FullName -Raw
  if (($text -split '<div').Count -ne ($text -split '</div>').Count) {
    throw "div 구조 불일치: $($_.Name)"
  }
  if ($text -match '(?m)^## (왜 이 방법|Engineering Decisions|시행착오)$') {
    throw "메타 제목 발견: $($_.Name)"
  }
}

Write-Host 'Portfolio content checks passed.' -ForegroundColor Green
```

- [ ] **Step 3: Run the guard before edits**

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/check-portfolio-content.ps1
```

Expected: `Portfolio content checks passed.`

- [ ] **Step 4: Commit the baseline guard**

```powershell
git add scripts/check-portfolio-content.ps1 Gemfile.lock
git commit -m "test: 포트폴리오 핵심 사실 검증 추가"
```

Expected: only the script is committed if `Gemfile.lock` matches HEAD.

---

### Task 2: CV Data Hierarchy

**Files:**
- Modify: `_data/cv/ko.yml`
- Modify: `_data/cv/en.yml`

**Interfaces:**
- Produces per project: `outcome: string`, `bullets: string[]`, `details: [{label: string, value: string}]`, `tech: string[]`
- Keeps `keywords` in YAML for source/search metadata but does not require visual rendering

- [ ] **Step 1: Add an outcome line to each LUXROBO project in both languages**

Use only existing facts:

```yaml
outcome: "ECAD 데이터를 입력으로 3D FVM 열해석을 수행하는 Python·Rust 엔진과 FastAPI 백엔드 개발"
```

```yaml
outcome: "GPS 품질 변화에 대응하는 EKF 위치 추정 구조를 로그 재생 환경과 실차에서 단계적으로 검증"
```

```yaml
outcome: "약 30대 CCTV 분석 결과와 BLE·비상벨 이벤트를 조명 제어로 연결한 통합 시스템 현장 납품"
```

Write equivalent English lines without adding metrics.

- [ ] **Step 2: Convert each Work Experience details list into labeled rows**

Target schema:

```yaml
details:
  - label: "시스템 구성"
    value: "ECAD 파싱 → 3D 해석 도메인 → FVM 해석 엔진 → FastAPI"
  - label: "해석 범위"
    value: "정상상태 온도 분포, 부품 발열원 추정, 전류 분포, IR drop"
  - label: "검증"
    value: "동일 보드 케이스를 ANSYS Icepak 결과와 비교"
```

Use `System / Methods / Validation`, `State / Validation / Diagnostics`, and `Video / Events / Control` for English labels.

- [ ] **Step 3: Reduce visible core bullets to 3 or 4 per project**

Rules:

- Outcome must not be repeated verbatim in the first bullet.
- Each bullet contains one technical subject.
- Thermal: engine, circuit physics, validation.
- Golf cart: sensor fusion/EKF, GPS-quality handling, control, validation environment.
- Parking: camera pipelines, perception, event/control path, delivery.

- [ ] **Step 4: Limit each visible tech list to 5–7 terms**

Use:

```yaml
tech: ["Python", "Rust", "FastAPI", "FVM", "ECAD", "Thermal Analysis"]
tech: ["RTK-GPS", "EKF", "C", "MATLAB", "Pure Pursuit", "Sensor Fusion"]
tech: ["C++", "Go", "Redis", "gRPC", "OpenCV", "YOLOv7", "RTSP"]
```

Keep `keywords` unchanged in the data but do not duplicate them in `tech`.

- [ ] **Step 5: Check bilingual field parity**

Run:

```powershell
$ko = Select-String _data/cv/ko.yml -Pattern '^\s+outcome:|^\s+- label:'
$en = Select-String _data/cv/en.yml -Pattern '^\s+outcome:|^\s+- label:'
if ($ko.Count -ne $en.Count) { throw "CV KO/EN structured-field mismatch" }
```

Expected: counts match.

- [ ] **Step 6: Commit CV data restructuring**

```powershell
git add _data/cv/ko.yml _data/cv/en.yml
git commit -m "refactor: CV 프로젝트 정보 계층 정리"
```

---

### Task 3: CV Renderer and Styles

**Files:**
- Modify: `_includes/cv.html`
- Modify: `_sass/custom/_cv.scss`

**Interfaces:**
- Consumes `proj.outcome`, `proj.details[].label`, `proj.details[].value`, `proj.tech`
- Renders locale-aware summaries: `상세 기술` for KO, `Technical details` for EN

- [ ] **Step 1: Render outcome after the project role**

Add after `proj.role`:

```liquid
{% if proj.outcome %}<p class="cv-outcome">{{ proj.outcome }}</p>{% endif %}
```

- [ ] **Step 2: Replace details bullet rendering with a definition list**

```liquid
{% if proj.details %}
<details class="cv-details">
  <summary>{% if lang_code == 'ko' %}상세 기술{% else %}Technical details{% endif %}</summary>
  <dl class="cv-detail-grid">
    {% for d in proj.details %}
      <dt>{{ d.label }}</dt><dd>{{ d.value }}</dd>
    {% endfor %}
  </dl>
</details>
{% endif %}
```

- [ ] **Step 3: Render only `tech` as visible chips**

Replace the current `proj.tech or proj.keywords` block with a `proj.tech` block. Preserve keywords in YAML but stop printing them in the UI.

- [ ] **Step 4: Add hierarchy and responsive styles**

Add styles for:

```scss
.cv-outcome {
  margin: 0.55rem 0 0.7rem;
  padding: 0.55rem 0.7rem;
  border-left: 3px solid var(--link-color);
  background: var(--card-bg);
  color: var(--heading-color);
}

.cv-detail-grid {
  display: grid;
  grid-template-columns: minmax(6rem, 0.26fr) 1fr;
  gap: 0.45rem 0.9rem;
  margin: 0;
  padding: 0.3rem 0.9rem 0.9rem;
}

.cv-detail-grid dt { font-weight: 650; color: var(--heading-color); }
.cv-detail-grid dd { margin: 0; color: var(--text-muted-color); }

@media (max-width: 576px) {
  .cv-detail-grid { grid-template-columns: 1fr; gap: 0.15rem; }
  .cv-detail-grid dd { margin-bottom: 0.55rem; }
}
```

Use existing Chirpy variables where available; verify `--card-bg` and `--heading-color` in the built CSS and replace with existing project variables if missing.

- [ ] **Step 5: Build and inspect CV output**

Run:

```powershell
docker rm -f site-preview 2>$null
docker run --rm -v "${PWD}:/srv" -v jekyll-gems:/usr/local/bundle -w /srv ruby:3.2 bash -lc "bundle install --quiet && bundle exec jekyll build"
```

Expected: build succeeds. Built CV contains six `<details>` elements, three per language.

- [ ] **Step 6: Commit CV renderer and styles**

```powershell
git add _includes/cv.html _sass/custom/_cv.scss
git commit -m "feat: CV 상세 기술 레이아웃 개선"
```

---

### Task 4: Shared Project Presentation Styles

**Files:**
- Modify: `_sass/custom/_projects.scss`

**Interfaces:**
- Produces reusable CSS classes: `.project-lead`, `.project-facts`, `.project-metrics`, `.project-flow`, `.project-timeline`, `.project-evidence`
- Project Markdown pages use these classes without a new Liquid data schema

- [ ] **Step 1: Add a compact project-facts grid**

Implement a responsive grid for role, period, platform, and outcome. It must collapse to one column below 576px.

- [ ] **Step 2: Add metric cards**

Use a three-column desktop grid and one-column mobile grid. Metrics are rendered only on pages with existing quantitative results.

- [ ] **Step 3: Add flow and timeline components**

`project-flow` supports inline stages for system pipelines. `project-timeline` supports ROBIT event sections without changing chronology.

- [ ] **Step 4: Add evidence-link styling**

Style existing paper, video, code, award, and media links as compact text actions. Do not add empty placeholders where evidence is unavailable.

- [ ] **Step 5: Run a Sass/Jekyll build**

Run the Docker build command from Task 3.

Expected: no Sass variable or selector errors.

- [ ] **Step 6: Commit project presentation styles**

```powershell
git add _sass/custom/_projects.scss
git commit -m "feat: 프로젝트 정보 컴포넌트 추가"
```

---

### Task 5: Industry Project Pages

**Files:**
- Modify: `_projects/golf-cart-autonomous-driving.md`
- Modify: `_projects/smart-parking-system.md`

**Interfaces:**
- Uses shared classes from Task 4
- Preserves front matter, language blocks, Mermaid diagrams, images, and existing facts

- [ ] **Step 1: Reorder the golf-cart Korean sections**

Target headings:

```markdown
## 문제
## 역할
## 위치 추정 구조
## GPS 품질 대응
## 조향 제어와 경로 생성
## 시뮬레이션·펌웨어 검증
## 실차 테스트
```

Move existing content without adding metrics. Place state-vector and EKF details under `위치 추정 구조`; gate/R/mode switching under `GPS 품질 대응`.

- [ ] **Step 2: Mirror the golf-cart English structure**

Use `Localization Architecture`, `GPS Quality Handling`, `Steering Control & Path Generation`, `Simulation & Firmware Validation`, `Real-Vehicle Testing`.

- [ ] **Step 3: Reorder the smart-parking Korean sections**

Target headings:

```markdown
## 문제
## 역할
## 영상 처리 서버
## 카메라별 분석 파이프라인
## 이벤트 처리 구조
## 조명 제어 서버
## 납품 결과
```

Keep the Mermaid event flow between role and implementation sections.

- [ ] **Step 4: Mirror the smart-parking English structure**

Use `Video Processing Server`, `Camera-Specific Pipelines`, `Event Processing`, `Lighting Control Server`, `Delivery`.

- [ ] **Step 5: Run content guards and build**

```powershell
powershell -ExecutionPolicy Bypass -File scripts/check-portfolio-content.ps1
docker run --rm -v "${PWD}:/srv" -v jekyll-gems:/usr/local/bundle -w /srv ruby:3.2 bash -lc "bundle install --quiet && bundle exec jekyll build"
```

- [ ] **Step 6: Commit industry pages**

```powershell
git add _projects/golf-cart-autonomous-driving.md _projects/smart-parking-system.md
git commit -m "refactor: 산업 프로젝트 기술 흐름 재구성"
```

---

### Task 6: Research Project Pages

**Files:**
- Modify: `_projects/oafmcl-humanoid-localization.md`
- Modify: `_projects/multi-uav-formation-control.md`

**Interfaces:**
- Uses metric and flow components from Task 4
- Preserves RTAMSE table, publication citation, ±0.2 m, MSE table, videos, and images

- [ ] **Step 1: Reorder OAFMCL sections**

Use headings: `FMCL 추정기`, `Odometry-NN`, `센서 구성과 협력 구조`, `실험 환경`, `비교 결과`. Place existing OAFMCL metric values into metric cards above the full table without changing table values.

- [ ] **Step 2: Mirror OAFMCL English sections**

Use `FMCL Estimator`, `Odometry-NN`, `Sensor Setup & Cooperative Structure`, `Experimental Setup`, `Comparison Results`.

- [ ] **Step 3: Reorder Multi-UAV sections**

Use headings: `분산 포메이션 제어`, `Virtual Leader 구조`, `그래프 기반 협력 항법`, `충돌 회피`, `시뮬레이션과 실기체 실험`. Display ±0.2 m, 61%, 27%, and 30% only from the existing result table.

- [ ] **Step 4: Mirror Multi-UAV English sections**

Use equivalent technical titles and preserve first-person contribution wording.

- [ ] **Step 5: Run content guards and build**

Run the same checks as Task 5.

- [ ] **Step 6: Commit research pages**

```powershell
git add _projects/oafmcl-humanoid-localization.md _projects/multi-uav-formation-control.md
git commit -m "refactor: 연구 프로젝트 기술 구조 재구성"
```

---

### Task 7: Team Project Pages

**Files:**
- Modify: `_projects/robit-humanoid.md`
- Modify: `_projects/smart-caddy-robot.md`

**Interfaces:**
- Uses timeline and flow components from Task 4
- Preserves team-role attribution, award records, images, videos, code links, and field-test narratives

- [ ] **Step 1: Convert ROBIT competitions to timeline presentation**

Keep headings and chronology: RoboCup 2019, IRC 2019, RoboCup 2020, IRC 2020. Group `팀 개발 도구` and `대회 결과` after the timeline. Keep outreach and media as evidence sections at the bottom.

- [ ] **Step 2: Preserve ROBIT human judgment narratives**

Verify the goalkeeper priority, fall recovery, MCL resampling exclusion, IRC AMCL choice, and team-tool motivation remain explicit inside technical sections rather than new meta headings.

- [ ] **Step 3: Reorder smart-caddy sections**

Use headings: `시스템 구성`, `GPS 기반 사용자 추종`, `Potential Field 장애물 회피`, `Min-Depth Filter`, `ODE 시뮬레이션`, `제어기 구성`, `실차 시연`.

- [ ] **Step 4: Preserve smart-caddy field evidence**

Keep the neighborhood/river GPS comparison, ordinary-GPS choice, random/Gaussian/failure LiDAR simulation, and 500/50/5 Hz control periods.

- [ ] **Step 5: Mirror English structures and run checks**

Run content guards and the Docker build.

- [ ] **Step 6: Commit team project pages**

```powershell
git add _projects/robit-humanoid.md _projects/smart-caddy-robot.md
git commit -m "refactor: 팀 프로젝트 기술 서사 재구성"
```

---

### Task 8: Cross-Page Copy Audit

**Files:**
- Modify only the eight CV/project content files when a verified copy issue is found

**Interfaces:**
- Consumes all revised copy
- Produces consistent but non-formulaic KO/EN text

- [ ] **Step 1: Scan Korean noun-ending overcompression**

Run:

```powershell
rg -n '(작업|변수|구조|과제|담당)\.$' _data/cv/ko.yml _projects
```

Review every match. Keep technically natural endings; rewrite only telegraphic fragments.

- [ ] **Step 2: Scan repeated Korean formulas**

```powershell
rg -n '설계·구현|확장성과 안정성|강인성 확보|핵심 과제' _data/cv/ko.yml _projects
```

Do not replace technical terms blindly. Reduce repetition when adjacent projects use the same formula.

- [ ] **Step 3: Scan English AI-pattern risks**

```powershell
rg -n ', (building|ensuring|highlighting|showcasing|laying|achieving)\b|not only .* but also|serves as|stands as' _data/cv/en.yml _projects
```

Rewrite matches as direct finite clauses or verb-led fragments.

- [ ] **Step 4: Verify team attribution**

Confirm team awards use `we/team`, while owned modules use `I/designed/implemented`.

- [ ] **Step 5: Commit copy audit changes**

```powershell
git add _data/cv/ko.yml _data/cv/en.yml _projects
git commit -m "style: 포트폴리오 문장 리듬과 역할 귀속 정리"
```

Skip the commit if the audit produces no changes.

---

### Task 9: Desktop, Mobile, and Deployment Verification

**Files:**
- No content changes unless verification reveals a defect

**Interfaces:**
- Produces verified local build and deployment-ready commits

- [ ] **Step 1: Run all content checks**

```powershell
powershell -ExecutionPolicy Bypass -File scripts/check-portfolio-content.ps1
```

Expected: pass.

- [ ] **Step 2: Build the complete site**

```powershell
docker run --rm -v "${PWD}:/srv" -v jekyll-gems:/usr/local/bundle -w /srv ruby:3.2 bash -lc "bundle install --quiet && bundle exec jekyll build"
```

Expected: successful Jekyll build.

- [ ] **Step 3: Start local preview**

```powershell
docker rm -f site-preview 2>$null
docker run -d --name site-preview -p 4000:4000 -v "${PWD}:/srv" -v jekyll-gems:/usr/local/bundle -w /srv -e JEKYLL_ENV=development ruby:3.2 bash -lc "bundle install --quiet && bundle exec jekyll serve --host 0.0.0.0 --port 4000 --force_polling"
```

- [ ] **Step 4: Inspect required pages at desktop and mobile widths**

Required URLs:

```text
http://localhost:4000/cv/
http://localhost:4000/projects/golf-cart-autonomous-driving/
http://localhost:4000/projects/smart-parking-system/
http://localhost:4000/projects/oafmcl-humanoid-localization/
http://localhost:4000/projects/multi-uav-formation-control/
http://localhost:4000/projects/robit-humanoid/
http://localhost:4000/projects/smart-caddy-robot/
```

Check widths 1440×1000 and 390×844. Verify language toggle, details keyboard interaction, date wrapping, tables, images, Mermaid diagrams, and no horizontal overflow.

- [ ] **Step 5: Check the final worktree**

```powershell
git status --short
git log --oneline -10
```

Expected: only `.bkit/` remains untracked; no accidental `Gemfile.lock` change.

- [ ] **Step 6: Push after user approves the local preview**

```powershell
git push origin main
```

Expected: GitHub Actions `Build and Deploy` succeeds for the final commit.
