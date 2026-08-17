---
title: "ROBIT 휴머노이드 로봇 (RoboCup · IRC)"
title_en: "ROBIT Humanoid Robot (RoboCup · IRC)"
description: "회로·펌웨어·비전·제어 전체 시스템을 개발해 RoboCup Korea Open 우승 2회, RoboCup 2019 Sydney 순위권, IRC 2020 대상(대통령상)을 거둔 ROBIT 활동."
description_en: "Full-stack humanoid development across circuits, firmware, vision, and control, resulting in two RoboCup Korea Open titles, ranked finishes at RoboCup 2019 Sydney, and the IRC 2020 Presidential Award."
date: 2022-02-28
period: "2019.01 ~ 2022.02"
category_label: Team
tech: [OpenCV, Particle Filter, STM32, Embedded System]
layout: portfolio
---

<div class="lang-page lang-page--own-title" data-cv-lang="en">
{% include lang-toggle.html %}

<div class="lang-block" data-lang="ko" lang="ko" markdown="1">

# {{ page.title }}

</div>

<div class="lang-block" data-lang="en" lang="en" markdown="1">

# {{ page.title_en }}

</div>

<div class="project-header">
  <span class="project-badge project-badge--{{ page.category_label | downcase }}">{{ page.category_label }}</span>
  <span class="project-header__period">{{ page.period }}</span>
  <span class="project-tags project-header__tags">
    {% for t in page.tech %}<span class="project-tag">{{ t }}</span>{% endfor %}
  </span>
</div>

<div class="lang-block" data-lang="ko" lang="ko" markdown="1">

<p class="project-lead">회로·펌웨어·비전·제어를 아우르는 대회용 휴머노이드 개발. 2020년 팀 리더로 활동했으며 RoboCup Korea Open 우승 2회와 IRC 2020 대상(대통령상) 수상.</p>

<div class="project-facts">
  <div class="project-fact"><span>역할</span><strong>전체 시스템 개발 · 2020 팀 리더</strong></div>
  <div class="project-fact"><span>플랫폼</span><strong>20–23 DoF · STM32 · Intel NUC</strong></div>
  <div class="project-fact"><span>개발 범위</span><strong>회로 · 펌웨어 · 비전 · 위치 추정</strong></div>
</div>

## 주요 개발

| 개발 영역 | 구현 내용 | 적용·결과 |
|---|---|---|
| 휴머노이드 로봇 축구 알고리즘 | 공 추적, 골문 방어, Goal Kick 동작 | RoboCup Korea Open 2019·2020 우승 |
| 휴머노이드 미션 수행 알고리즘 | 작업 순서 유지, 하노이 탑·컬링 동작 | IRC 2019·2020 적용, 2020 대통령상 |
| 비전·위치 추정 | HSV 객체·라인 인식, MCL·AMCL | Sydney 3개 종목 순위권, IRC 2020 적용 |
| 임베디드·모션 시스템 | STM32 제어보드, 모터·센서 펌웨어, 23 DoF 모션 도구 | 대회용 로봇 전체 시스템에 적용 |

![라인 인식과 Odometry를 결합한 휴머노이드 MCL 위치 추정 구조](/assets/img/projects/robit-mcl-diagram.png)
_휴머노이드 위치 추정 구조 — Line Detection·Odometry 기반 Prediction, Update, Resampling_

## 경기 조건에 따른 위치 추정

- **RoboCup**: 로봇 위치가 연속적으로 변하는 축구 경기 조건을 고려해 주변 particle 중심의 MCL 적용
- **IRC**: 로봇을 들어 옮길 수 있는 종목 조건을 고려해 random particle을 재생성하는 AMCL 적용
- 동일한 Particle Filter 계열에서도 실제 경기 규칙과 실패 상황에 따라 resampling 전략을 다르게 구성

![RoboCup 2019 Sydney 경기장에 선 ROBIT 휴머노이드들](/assets/img/projects/robit-robocup2019-sydney.jpg)
_RoboCup 2019 Sydney — ROBIT 휴머노이드_

## 개발 도구

- **ROBIT Teacher**: 모션 제작, Dynamixel 485 통신, PID·토크 제어
- **Vision Tool**: HSV 임계값 튜닝, 객체 분류, 경기 영상 녹화·재생

![ROBIT 모션 프로그램과 Dynamixel 시리얼 제어 툴 화면](/assets/img/projects/robit-motion-tool.jpg)
_모션 제작·모터 제어 도구(Qt)_

## 수상

<div class="project-certs">
  <figure><img src="/assets/img/awards/krc-open-2019-1st.jpg" alt="RoboCup 2019 Korea Open 우승 상장"><figcaption>RoboCup 2019 Korea Open — 우승</figcaption></figure>
  <figure><img src="/assets/img/awards/robocup2019-sydney-dropin-2nd.jpg" alt="RoboCup 2019 Sydney Drop-In Challenge 2위 상장"><figcaption>Sydney Drop-In — 2위</figcaption></figure>
  <figure><img src="/assets/img/awards/robocup2019-sydney-technical-3rd.jpg" alt="RoboCup 2019 Sydney Technical Challenge 3위 상장"><figcaption>Sydney Technical — 3위</figcaption></figure>
  <figure><img src="/assets/img/awards/krc-open-2020-1st.jpg" alt="RoboCup 2020 Korea Open 우승 상장"><figcaption>RoboCup 2020 Korea Open — 우승</figcaption></figure>
  <figure><img src="/assets/img/awards/irc2020-presidential.jpg" alt="국제로봇콘테스트 2020 대통령상 상장"><figcaption>IRC 2020 — 대상(대통령상)</figcaption></figure>
</div>

## 관련 보도

- [RoboCup 2019 Sydney 3개 부문 수상](https://www.straightnews.co.kr/news/articleView.html?idxno=52035)
- [2020 Korea RoboCup Open 대학부 1위](https://ei.kw.ac.kr/community/newsletter.php?BoardMode=view&UID=951)

---

[← 모든 프로젝트 보기](/projects/){: .project-nav-link } · [CV 보기](/cv/){: .project-nav-link }

</div>

<div class="lang-block" data-lang="en" lang="en" markdown="1">

<p class="project-lead">Competition humanoid development across circuits, firmware, vision, and control. I served as team leader in 2020; the team won the RoboCup Korea Open twice and the IRC 2020 Grand Prize (Presidential Award).</p>

<div class="project-facts">
  <div class="project-fact"><span>Role</span><strong>Full-system development · Team leader in 2020</strong></div>
  <div class="project-fact"><span>Platform</span><strong>20–23 DoF · STM32 · Intel NUC</strong></div>
  <div class="project-fact"><span>Scope</span><strong>Circuits · Firmware · Vision · Localization</strong></div>
</div>

## Development Scope

| Development Area | Implementation | Deployment & Result |
|---|---|---|
| Humanoid robot soccer algorithms | Ball tracking, goal defense, and Goal Kick behaviors | RoboCup Korea Open champion in 2019 and 2020 |
| Humanoid mission algorithms | Task-state retention and Tower of Hanoi/curling behaviors | Deployed at IRC 2019–2020; Presidential Award in 2020 |
| Vision & localization | HSV object/line recognition, MCL, and AMCL | Three ranked finishes in Sydney; deployed at IRC 2020 |
| Embedded & motion system | STM32 control board, motor/sensor firmware, and 23 DoF motion tool | Used across the competition robot stack |

![Humanoid MCL localization architecture combining line recognition and odometry](/assets/img/projects/robit-mcl-diagram.png)
_Humanoid localization — Prediction, Update, and Resampling from line detection and odometry_

## Localization by Match Condition

- **RoboCup**: Used local resampling because robot poses change continuously during soccer matches
- **IRC**: Added random-particle regeneration because the robot could be picked up and moved
- Changed the resampling strategy within the same Particle Filter family to match each event's failure modes

![ROBIT humanoids on the field at RoboCup 2019 Sydney](/assets/img/projects/robit-robocup2019-sydney.jpg)
_ROBIT humanoids at RoboCup 2019 Sydney_

## Development Tools

- **ROBIT Teacher**: Motion authoring, Dynamixel 485 communication, PID and torque control
- **Vision Tool**: HSV threshold tuning, object classification, match recording and playback

![ROBIT motion program and Dynamixel serial control tool](/assets/img/projects/robit-motion-tool.jpg)
_Motion-authoring and motor-control tool (Qt)_

## Awards

<div class="project-certs">
  <figure><img src="/assets/img/awards/krc-open-2019-1st.jpg" alt="RoboCup 2019 Korea Open championship certificate"><figcaption>RoboCup 2019 Korea Open — Champion</figcaption></figure>
  <figure><img src="/assets/img/awards/robocup2019-sydney-dropin-2nd.jpg" alt="RoboCup 2019 Sydney Drop-In Challenge 2nd place certificate"><figcaption>Sydney Drop-In — 2nd</figcaption></figure>
  <figure><img src="/assets/img/awards/robocup2019-sydney-technical-3rd.jpg" alt="RoboCup 2019 Sydney Technical Challenge 3rd place certificate"><figcaption>Sydney Technical — 3rd</figcaption></figure>
  <figure><img src="/assets/img/awards/krc-open-2020-1st.jpg" alt="RoboCup 2020 Korea Open championship certificate"><figcaption>RoboCup 2020 Korea Open — Champion</figcaption></figure>
  <figure><img src="/assets/img/awards/irc2020-presidential.jpg" alt="International Robot Contest 2020 Presidential Award certificate"><figcaption>IRC 2020 — Presidential Award</figcaption></figure>
</div>

## Coverage

- [Three ranked finishes at RoboCup 2019 Sydney](https://www.straightnews.co.kr/news/articleView.html?idxno=52035)
- [First place at the 2020 Korea RoboCup Open](https://ei.kw.ac.kr/community/newsletter.php?BoardMode=view&UID=951)

---

[← All Projects](/projects/){: .project-nav-link } · [View CV](/cv/){: .project-nav-link }

</div>

</div>
