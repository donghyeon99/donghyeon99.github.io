---
title: "ROBIT 휴머노이드 로봇 (RoboCup · IRC)"
title_en: "ROBIT Humanoid Robot (RoboCup · IRC)"
description: "회로·펌웨어·비전·제어 전체 시스템을 개발해 RoboCup Korea Open 우승 2회(2019·2020), RoboCup 2019 Sydney 국제대회 입상, IRC 2020 대상(대통령상)을 거둔 광운대 로봇게임단 ROBIT 활동."
description_en: "ROBIT (robot game team, Kwangwoon Univ.) — developed the full system (circuits, firmware, vision, control), winning the RoboCup Korea Open twice (2019·2020), earning awards at RoboCup 2019 Sydney, and receiving the Grand Prize (Presidential Award) at IRC 2020."
date: 2022-02-28
period: "2019.01 ~ 2022.02"
category_label: Team
tech: [OpenCV, Particle Filter, STM32, Embedded System]
layout: page
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

## 문제

휴머노이드 축구 로봇은 걷는 동작만으로도 카메라 영상이 흔들리고 보행 기반 Odometry에 오차가 쌓이는 상태에서, 공·라인 인식과 자기 위치 추정, 경기 동작까지 실시간으로 수행 필요. 경기장마다 조명이 다르고, 로봇이 넘어지는 낙상이 수시로 일어나며, 단판 승부로 결과가 갈리는 대회 환경에서는 알고리즘의 정확도만큼 예외 상황에서도 동작을 이어가는 강인함이 승패를 좌우.

## 역할

광운대학교 로봇게임단 ROBIT에서 활동하며 RoboCup·국제로봇콘테스트(IRC) 휴머노이드 리그 참가용 로봇의 전체 시스템(회로, 펌웨어, 비전, 제어) 개발을 주도했고, 2020년에는 휴머노이드 팀 리더를 담당. 이 기간 RoboCup Korea Open 우승 2회(2019·2020)와 RoboCup 2019 Sydney 국제대회 입상에 이어, IRC 2020에서 대상(대통령상) 수상.

## 핵심 기여

- 휴머노이드 제어 회로를 직접 설계·제작하고 STM32 기반 펌웨어(모터·센서 제어)를 개발해 하드웨어부터 알고리즘까지 전체 시스템을 담당
- 조명 변화에 강인한 색상 기반 기법으로 OpenCV 대회용 영상 처리를 개발해 실내·실외 인식 안정성 향상
- Particle Filter 기반 영상 위치 추정(Visual Localization) 구현: 축구장 라인 추출 → Likelihood 모델 변환 → Particle Filter 가중치 활용

### RoboCup 2019 Korea Open · Sydney (2019.02, 2019.07)

휴머노이드 축구 경기를 위한 지능형 로봇을 개발해 참가. 2019.02 Korea Open Humanoid Soccer Kid 종목에서 우승했고, 2019.07 Sydney 국제대회 TeenSize(중대형 휴머노이드 체급) 종목에서는 Drop-In Challenge(서로 다른 팀의 로봇을 섞어 혼성 팀으로 치르는 경기) 2위, Technical Challenge 3위, Soccer 본선 4위 기록.

담당 역할은 골키퍼 로봇 알고리즘과 Goal Kick 알고리즘 구현. 골키퍼 알고리즘은 공과의 거리에 따라 전진해 공을 차거나 공과 일직선을 유지하며 막는 방식으로, 대부분의 참가 팀이 공격 알고리즘 위주로 개발하는 것과 달리 골을 막는 것도 넣는 것만큼 중요하다고 보아 비중 있게 개발. Goal Kick 알고리즘은 코너킥 지점에서 패스된 공을 로봇이 발로 차 골대에 넣는 동작과 모션 구현.

### 국제로봇콘테스트(IRC) 2019 Robot Sports (2019.07 ~ 2019.10)

컬링과 하노이 탑 쌓기 종목에 지능형 휴머노이드 로봇으로 참가.

- **낙상 복구**: 하노이 탑 쌓기 알고리즘을 로봇이 경기 중 넘어지더라도 직전까지 수행한 작업을 기억해 재개하도록 구현. 단판 승부로 결과가 갈리는 대회 특성상 예상치 못한 상황에서도 작업을 완수하는 안정성이 중요.
- **색상 인식**: HSV 색공간 기반 비전 알고리즘을 개발해 동일 색상의 물체가 여럿일 때 가장 큰 물체를 인식하도록 구현.
- **영상 녹화**: 경기 분석을 위한 영상 녹화·재생 프로그램을 함께 개발.
- **회로·전원**: 로봇 제어 회로를 STM32F446RE MCU로 설계해 하나의 배터리로 MCU·모터·미니PC에 전원을 공급하도록 구현.

![IRC 2019 휴머노이드 로봇 스포츠 경기 현장](/assets/img/projects/robit-humanoid-1.jpg)
_IRC 2019 휴머노이드 로봇 스포츠 경기 현장_

### RoboCup 2020 Korea Open (2020.08) — 우승

Humanoid Soccer Kid 종목에 출전해 축구장 환경에서의 Localization 알고리즘 개발을 담당.

- **Monte Carlo Localization(MCL)**: 로봇의 보행 값을 기반으로 한 Odometry 모델에 로봇의 흔들림을 고려한 Gaussian noise를 반영하고, 경기장 라인의 Likelihood Field를 미리 만들어 로봇이 인식한 라인과 매칭하며 현재 위치를 갱신하도록 구현.
- **라인 인식**: HSV 색공간 이진화로 이진 영상을 만든 뒤 모폴로지 연산으로 노이즈를 제거하고, 컨투어로 외곽선만 검출해 연산량을 낮추면서 로봇까지의 실제 거리를 계산하는 순서로 처리.

### 국제로봇콘테스트(IRC) 2020 휴머노이드 로봇 스포츠 지능형 하이테크리그 (2020.08 ~ 2020.11) — 대상(대통령상)

하노이 탑 쌓기와 육상 경기 종목에 출전해 1차대회 3위를 거쳐 본대회에서 대상(대통령상) 수상. 특징 기반 Localization 기술을 개발했으며, 기존 MCL 대신 particle의 가중치 평균 비율에 따라 particle을 랜덤으로 재생성하는 Augmented Monte Carlo Localization(AMCL)을 구현. 이를 통해 로봇 위치가 급격히 바뀌는 Kidnap 문제와 같은 비선형적 상황에도 대응 가능.

## 결과

- **국제로봇콘테스트(IRC) 2020** — 대상(대통령상) 수상 (산업통상자원부 & 서울과학기술대학교 주최)
- **RoboCup Korea Open** — Humanoid Soccer Kid 종목 우승 2회 (2019.02, 2020.08)
- **RoboCup 2019 Sydney 국제대회** — Drop-In Challenge 2위, Technical Challenge 3위, Soccer 본선 4위

### 수상 기록 (상장)

<div class="project-certs">
  <figure><img src="/assets/img/awards/krc-open-2019-1st.jpg" alt="RoboCup 2019 Korea Open 우승 상장"><figcaption>RoboCup 2019 Korea Open — 우승</figcaption></figure>
  <figure><img src="/assets/img/awards/robocup2019-sydney-dropin-2nd.jpg" alt="RoboCup 2019 Sydney Drop-In Challenge 2위 상장"><figcaption>RoboCup 2019 Sydney — Drop-In Challenge 2위</figcaption></figure>
  <figure><img src="/assets/img/awards/robocup2019-sydney-technical-3rd.jpg" alt="RoboCup 2019 Sydney Technical Challenge 3위 상장"><figcaption>RoboCup 2019 Sydney — Technical Challenge 3위</figcaption></figure>
  <figure><img src="/assets/img/awards/krc-open-2020-1st.jpg" alt="RoboCup 2020 Korea Open 우승 상장"><figcaption>RoboCup 2020 Korea Open — 우승</figcaption></figure>
  <figure><img src="/assets/img/awards/irc2020-presidential.jpg" alt="국제로봇콘테스트 2020 대통령상 상장"><figcaption>국제로봇콘테스트(IRC) 2020 — 대상(대통령상)</figcaption></figure>
</div>

## 행사·전시 활동

대회 준비와 병행해 지역 축제·전시 부스 운영과 로봇대회 심판 활동 등 대외 활동에도 참여.

| 시기 | 활동 |
|---|---|
| 2019.05.04 | 노원 어린이날 지역연계축제 |
| 2019.05.06 | 월계3동 체육대회 |
| 2019.05.25 | 노원미래과학축제 부스 운영 (휴머노이드 로봇 시연) |
| 2019.09.01 | 제10회 K로봇대회 심판 참가 (휴머노이드 장애물 부문 부심) |
| 2019.10.19 | 서울학생 메이커 괴짜 축제 |
| 2019.11.26 | 2019 공학 페스티벌 |
| 2020.11.04 | 제11회 K로봇대회 심판 참가 (휴머노이드 격투 부문 주심) |

![2019 노원미래과학축제 ROBIT 부스](/assets/img/projects/robit-humanoid-2.jpg)
_2019 노원미래과학축제 ROBIT 부스_

## 언론 보도

- [광운대 로봇게임단 '로빛(Roːbit)', 세계로봇대회 'RoboCup 2019' 3개 부문 수상](https://www.straightnews.co.kr/news/articleView.html?idxno=52035) — 스트레이트뉴스, 2019.07
- [Ro:bit, '2020 코리아 로보컵 오픈대회' 대학부 1위](https://ei.kw.ac.kr/community/newsletter.php?BoardMode=view&UID=951) — 광운대 전자정보공과대학, 2020.09
- [2020 코리아 로보컵 오픈대회, 온라인으로 성료](https://www.irobotnews.com/news/articleView.html?idxno=22095) — 로봇신문, 2020.08
- [세계에 광운의 이름을 알리는 광운대 로봇게임단 '로빛(ROBIT)'](https://www.dhnews.co.kr/news/articleView.html?idxno=128915) — 대학저널, 2021.07

---

[← 모든 프로젝트 보기](/projects/){: .project-nav-link } · [CV 보기](/cv/){: .project-nav-link }

</div>

<div class="lang-block" data-lang="en" lang="en" markdown="1">

## Problem

A humanoid soccer robot must recognize the ball and field lines, estimate its own position, and execute match play in real time — all while walking alone shakes the camera image and error accumulates in gait-based odometry. In a competition environment where lighting differs from venue to venue, falls happen constantly, and single-elimination matches decide the result, robustness that keeps the robot operating through unexpected situations determines wins and losses as much as algorithmic accuracy.

## Role

As a member of ROBIT, the robot game team at Kwangwoon University, led development of the full robot system (circuits, firmware, vision, control) for the RoboCup and International Robot Contest (IRC) humanoid leagues, and served as humanoid team leader in 2020. During this period, won the RoboCup Korea Open twice (2019·2020) and earned awards at the RoboCup 2019 Sydney international competition, followed by the Grand Prize (Presidential Award) at IRC 2020.

## Key Contributions

- Designed and built the humanoid control circuits and developed STM32-based firmware (motor/sensor control), owning the full system from hardware to algorithms
- Developed competition vision processing based on OpenCV using color-based techniques robust to lighting changes, improving indoor/outdoor recognition stability
- Implemented Particle Filter-based visual localization: extracted soccer-field lines → converted them to a likelihood model → applied Particle Filter weighting

### RoboCup 2019 Korea Open · Sydney (2019.02, 2019.07)

Developed and entered an intelligent robot for humanoid soccer matches. Won the Humanoid Soccer Kid event at the Korea Open in 2019.02; at the Sydney international competition in 2019.07, in the TeenSize class (mid-to-large humanoids), recorded 2nd place in the Drop-In Challenge (matches played by mixed teams combining robots from different teams), 3rd place in the Technical Challenge, and 4th place in the main Soccer tournament.

Responsible for implementing the goalkeeper robot algorithm and the Goal Kick algorithm. The goalkeeper algorithm, depending on the distance to the ball, either advances to kick it away or blocks while staying in line with the ball — developed with substantial weight on the view that stopping goals matters as much as scoring them, unlike most participating teams that focus on offensive algorithms. The Goal Kick algorithm implemented the behavior and motion of kicking a ball passed from the corner-kick spot into the goal.

### International Robot Contest (IRC) 2019 Robot Sports (2019.07 ~ 2019.10)

Competed with an intelligent humanoid robot in the curling and Tower of Hanoi events.

- **Fall recovery**: Implemented the Tower of Hanoi algorithm so that even if the robot falls mid-match, it remembers the work completed up to that point and resumes. Given the single-elimination format, the reliability to complete the task under unexpected situations is critical.
- **Color recognition**: Developed an HSV color-space vision algorithm that recognizes the largest object when multiple objects of the same color are present.
- **Video recording**: Also developed a video recording/playback program for match analysis.
- **Circuits & power**: Designed the robot control circuit around an STM32F446RE MCU so that a single battery powers the MCU, motors, and mini PC.

![IRC 2019 Humanoid Robot Sports competition venue](/assets/img/projects/robit-humanoid-1.jpg)
_IRC 2019 Humanoid Robot Sports competition venue_

### RoboCup 2020 Korea Open (2020.08) — Champion

Competed in the Humanoid Soccer Kid event, responsible for developing the localization algorithm for the soccer-field environment.

- **Monte Carlo Localization (MCL)**: Applied Gaussian noise accounting for the robot's sway to an odometry model based on the robot's gait values, and pre-built a likelihood field of the field lines so the current position is updated by matching against the lines the robot recognizes.
- **Line recognition**: Processed in sequence — created a binary image via HSV color-space thresholding, removed noise with morphological operations, then detected only outlines via contours to lower computation while calculating the actual distance to the robot.

### International Robot Contest (IRC) 2020 Humanoid Robot Sports, Intelligent High-Tech League (2020.08 ~ 2020.11) — Grand Prize (Presidential Award)

Competed in the Tower of Hanoi and athletics events, placing 3rd in the preliminary round and winning the Grand Prize (Presidential Award) at the main event. Developed feature-based localization; instead of standard MCL, implemented Augmented Monte Carlo Localization (AMCL), which randomly regenerates particles according to the ratio of average particle weights — making it possible to handle nonlinear situations such as the kidnapped-robot problem, where the robot's position changes abruptly.

## Results

- **International Robot Contest (IRC) 2020** — Grand Prize (Presidential Award) (hosted by the Ministry of Trade, Industry and Energy & Seoul National University of Science and Technology)
- **RoboCup Korea Open** — Champion, Humanoid Soccer Kid, twice (2019.02, 2020.08)
- **RoboCup 2019 Sydney** — 2nd place in the Drop-In Challenge, 3rd place in the Technical Challenge, 4th place in the main Soccer tournament

### Award Certificates

<div class="project-certs">
  <figure><img src="/assets/img/awards/krc-open-2019-1st.jpg" alt="RoboCup 2019 Korea Open championship certificate"><figcaption>RoboCup 2019 Korea Open — Champion</figcaption></figure>
  <figure><img src="/assets/img/awards/robocup2019-sydney-dropin-2nd.jpg" alt="RoboCup 2019 Sydney Drop-In Challenge 2nd place certificate"><figcaption>RoboCup 2019 Sydney — Drop-In Challenge 2nd Place</figcaption></figure>
  <figure><img src="/assets/img/awards/robocup2019-sydney-technical-3rd.jpg" alt="RoboCup 2019 Sydney Technical Challenge 3rd place certificate"><figcaption>RoboCup 2019 Sydney — Technical Challenge 3rd Place</figcaption></figure>
  <figure><img src="/assets/img/awards/krc-open-2020-1st.jpg" alt="RoboCup 2020 Korea Open championship certificate"><figcaption>RoboCup 2020 Korea Open — Champion</figcaption></figure>
  <figure><img src="/assets/img/awards/irc2020-presidential.jpg" alt="International Robot Contest 2020 Presidential Award certificate"><figcaption>International Robot Contest (IRC) 2020 — Grand Prize (Presidential Award)</figcaption></figure>
</div>

## Outreach & Exhibitions

Alongside competition preparation, took part in outreach activities such as running booths at local festivals and exhibitions and refereeing robot competitions.

| Date | Activity |
|---|---|
| 2019.05.04 | Nowon Children's Day community festival |
| 2019.05.06 | Wolgye 3-dong sports day |
| 2019.05.25 | Booth at the Nowon Future Science Festival (humanoid robot demonstration) |
| 2019.09.01 | Referee at the 10th K-Robot Competition (assistant referee, humanoid obstacle event) |
| 2019.10.19 | Seoul Student Maker Geek Festival |
| 2019.11.26 | 2019 Engineering Festival |
| 2020.11.04 | Referee at the 11th K-Robot Competition (head referee, humanoid fighting event) |

![ROBIT booth at the 2019 Nowon Future Science Festival](/assets/img/projects/robit-humanoid-2.jpg)
_ROBIT booth at the 2019 Nowon Future Science Festival_

## Media Coverage

- [Kwangwoon University robot game team 'Roːbit' wins in three categories at world robot competition 'RoboCup 2019'](https://www.straightnews.co.kr/news/articleView.html?idxno=52035) — Straight News, 2019.07
- [Ro:bit takes 1st place in the university division at the 2020 Korea RoboCup Open](https://ei.kw.ac.kr/community/newsletter.php?BoardMode=view&UID=951) — Kwangwoon University College of Electronics and Information Engineering, 2020.09
- [2020 Korea RoboCup Open successfully held online](https://www.irobotnews.com/news/articleView.html?idxno=22095) — Robot Newspaper, 2020.08
- ['ROBIT', the Kwangwoon University robot game team spreading Kwangwoon's name to the world](https://www.dhnews.co.kr/news/articleView.html?idxno=128915) — University Journal, 2021.07

---

[← All Projects](/projects/){: .project-nav-link } · [View CV](/cv/){: .project-nav-link }

</div>

</div>
