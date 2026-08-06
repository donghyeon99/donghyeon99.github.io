---
title: "ROBIT 휴머노이드 로봇 (RoboCup · IRC)"
title_en: "ROBIT Humanoid Robot (RoboCup · IRC)"
description: "회로·펌웨어·비전·제어 전체 시스템을 개발해 RoboCup Korea Open 우승 2회(2019·2020), RoboCup 2019 Sydney 국제대회 입상, IRC 2020 대상(대통령상)을 거둔 광운대 로봇게임단 ROBIT 활동."
description_en: "ROBIT (robotics competition team, Kwangwoon Univ.) — built the full humanoid system (circuits, firmware, vision, control); two RoboCup Korea Open titles (2019·2020), awards at RoboCup 2019 Sydney, and the Grand Prize (Presidential Award) at IRC 2020."
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

RoboCup과 국제로봇콘테스트(IRC)에 출전하는 휴머노이드를 회로부터 펌웨어·비전·제어까지 직접 개발. RoboCup Korea Open 우승 2회, RoboCup 2019 Sydney 입상, IRC 2020 대상(대통령상)이 이 기간의 결과.

## 문제

휴머노이드 축구 로봇은 걷는 동작만으로 카메라가 흔들리고, 보행 기반 Odometry에는 오차가 계속 쌓이는 구조. 그 상태에서 공·라인 인식, 자기 위치 추정, 경기 동작까지 실시간 처리 필요. 게다가 경기장마다 조명이 다르고, 낙상은 수시로 발생하며, 단판 승부로 결과가 갈리는 조건. 알고리즘의 정확도만큼이나 예외 상황에서도 동작을 이어가는 끈질김이 승패를 가르는 환경.

## 역할

광운대학교 로봇게임단 ROBIT에서 RoboCup·국제로봇콘테스트(IRC) 휴머노이드 리그 참가용 로봇의 전체 시스템(회로, 펌웨어, 비전, 제어) 개발을 주도. 2020년에는 휴머노이드 팀 리더 담당. 이 기간 RoboCup Korea Open 우승 2회(2019·2020), RoboCup 2019 Sydney 국제대회 입상, IRC 2020 대상(대통령상) 수상.

플랫폼은 20~21 DoF 휴머노이드. ROBOTIS Dynamixel 액추에이터, Logitech C920 카메라, Intel NUC(i5), 6DoF IMU(MW-AHRSv1)에 직접 설계한 STM32 제어보드를 얹은 구성이며, 개발 환경은 Linux·ROS·C/C++·Qt.

## 핵심 기여

- 휴머노이드 제어 회로 직접 설계·제작, STM32 기반 펌웨어(모터·센서 제어) 개발. 하드웨어부터 알고리즘까지 전 계층 담당.
- 조명 변화에 덜 민감한 색상 기반 기법으로 OpenCV 대회용 영상 처리를 개발, 실내·실외 인식 안정성 개선.
- Particle Filter 기반 영상 위치 추정(Visual Localization) 구현. 축구장 라인 추출 → Likelihood 모델 변환 → Particle Filter 가중치 활용 순서.

### RoboCup 2019 Korea Open · Sydney (2019.02, 2019.07) — 우승 · Sydney 입상

휴머노이드 축구 경기용 지능형 로봇을 개발해 참가. 2019.02 Korea Open Humanoid Soccer Kid 종목 우승, 2019.07 Sydney 국제대회 TeenSize(중대형 휴머노이드 체급) 종목에서 Drop-In Challenge(서로 다른 팀의 로봇을 섞어 혼성 팀으로 치르는 경기) 2위, Technical Challenge 3위, Soccer 본선 4위 기록.

담당은 골키퍼 알고리즘과 Goal Kick 알고리즘. 골키퍼는 인식된 공과의 거리에 따라 전진해 걷어내거나, 공과 일직선을 유지하며 막는 구조. 대부분의 팀이 공격 알고리즘에 집중하는 반면 골키퍼 비중은 크지 않은데, 골을 막는 일도 넣는 일만큼 중요하다는 판단에서 비중 있게 개발. Goal Kick은 코너킥 지점에서 패스된 공을 날아오는 상태 그대로 발로 차 골대에 넣는 동작과 모션 구현.

![RoboCup 2019 Sydney 경기장에 선 ROBIT 휴머노이드들](/assets/img/projects/robit-robocup2019-sydney.jpg)
_RoboCup 2019 Sydney — 경기장에 선 ROBIT 휴머노이드들_

### 국제로봇콘테스트(IRC) 2019 Robot Sports (2019.07 ~ 2019.10)

컬링과 하노이 탑 쌓기 종목에 지능형 휴머노이드 로봇으로 참가. 담당은 하노이 탑 쌓기 알고리즘, 색상 인식 비전 알고리즘, 로봇 제어 회로 설계.

- **낙상 복구**: 하노이 탑 쌓기 알고리즘에 작업 상태 기억 구조 적용. 경기 중 넘어져도 직전까지 수행한 단계를 기억해 일어난 뒤 작업 재개. 단판 승부로 결과가 갈리는 대회 특성상, 낙상이나 물체 미검출 같은 상황을 미리 상정해 작업을 완수하는 쪽이 중요하다는 판단.
- **색상 인식**: HSV 색공간 기반 비전 알고리즘 개발. 색상별 물체 탐색에 더해, 같은 색 물체가 여럿일 때는 영상에서 가장 큰 물체를 인식하도록 구현.
- **영상 녹화**: 경기 분석용 영상 녹화·재생 프로그램 병행 개발.
- **회로·전원**: STM32F446RE MCU로 로봇 제어 회로 설계. 배터리 하나로 MCU·모터·미니PC 전원 공급.

![IRC 2019 휴머노이드 로봇 스포츠 경기 현장](/assets/img/projects/robit-humanoid-1.jpg)
_IRC 2019 휴머노이드 로봇 스포츠 경기 현장_

### RoboCup 2020 Korea Open (2020.08) — 우승

Humanoid Soccer Kid 종목에 출전해 우승. 담당은 축구장 환경의 Localization 알고리즘 개발과 라인 인식용 영상 처리.

접근 선택의 근거부터 보면, 휴머노이드는 보행 중 흔들림이 커서 Dead Reckoning 같은 내계센서 기반 추정이 어려운 반면, 축구장은 특징이 거의 없는 대신 맵이 미리 주어지는 환경. 그래서 확률 기반 MCL에 라인 Likelihood Field 매칭을 결합하는 방향으로 결정.

- **Monte Carlo Localization(MCL)**: 보행 값 기반 Odometry 모델에 로봇 흔들림을 고려한 Gaussian noise 반영. 경기장 라인의 Likelihood Field를 미리 만들어 두고, 로봇이 인식한 라인과 매칭해 가중치가 가장 높은 particle을 현재 위치로 갱신.
- **Resampling 설계 판단**: Kidnap 대응용 random sampling은 의도적으로 제외. 경기 중 로봇 위치는 연속적으로만 변하므로, 현재 particle 주변에서만 다시 뽑는 쪽이 낫다는 판단.
- **라인 인식**: HSV 색공간 이진화 → 모폴로지 연산으로 노이즈 제거 → 컨투어로 외곽선만 검출. 라인의 모든 픽셀을 계산하는 대신 외곽선만 다뤄 연산량을 낮추고, 검출된 영상 좌표에서 로봇까지의 실제 거리 계산.

### 국제로봇콘테스트(IRC) 2020 휴머노이드 로봇 스포츠 지능형 하이테크리그 (2020.08 ~ 2020.11) — 대상(대통령상)

하노이 탑 쌓기와 육상 경기 종목에 출전, 1차대회 3위를 거쳐 본대회에서 대상(대통령상) 수상. 담당은 특징 기반 Localization 기술 개발.

임의의 맵에 특징점을 두고 이를 이용한 Self-Localization을 구성하되, 기존 MCL 대신 particle 가중치 평균의 비율에 따라 particle을 랜덤으로 재생성하는 Augmented Monte Carlo Localization(AMCL) 적용. 로봇의 보행을 odometry 모델로, 카메라로 계산한 특징점까지의 거리를 measurement 모델로 사용하는 구조. 덕분에 로봇 위치가 급격히 바뀌는 Kidnap 문제 같은 비선형적 상황에도 대응 가능.

같은 해 RoboCup에서는 위치가 연속적으로 변한다는 이유로 random sampling을 뺐지만, IRC는 로봇을 들어 옮기는 상황이 생겨 정반대 설계를 선택. 같은 필터라도 종목 조건에 따라 설계가 달라진다는 점을 체감한 경험.

### 팀을 위한 도구들

경기 알고리즘 못지않게 도구 개발에도 비중. Linux 환경에서 23 DoF 휴머노이드의 모션을 제작하고 PC에서 모터를 직접 제어하는 모션 프로그램(ROBIT Teacher, Qt) 개발, 모션 데이터를 시리얼 컨버터를 거쳐 Dynamixel 액추에이터로 보내는 485 통신부도 함께 구현(2020.07~08). 컬링 종목용으로는 HSV 임계값을 슬라이더로 튜닝하고 경기 영상을 녹화·재생하는 비전 툴을 제작. 현장 튜닝 시간 단축.

![ROBIT 모션 프로그램과 Dynamixel 시리얼 제어 툴 화면](/assets/img/projects/robit-motion-tool.jpg)
_모션 제작·모터 제어 툴(Qt): Dynamixel 시리얼 통신, PID 설정, 토크 제어 UI_

![컬링 비전 튜닝 툴 화면](/assets/img/projects/robit-curling-vision.jpg)
_컬링 비전 툴(Qt): HSV 임계값 튜닝, 색상별 객체 분류, 경기 영상 녹화·재생_

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

대회 준비와 병행해 지역 축제·전시 부스 운영, 로봇대회 심판 등 대외 활동에도 참여.

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

I built humanoids for RoboCup and the International Robot Contest (IRC), from circuits and firmware up through vision and control. The record from those years: two RoboCup Korea Open titles, awards at RoboCup 2019 Sydney, and the Grand Prize (Presidential Award) at IRC 2020.

## Problem

A humanoid soccer robot must recognize the ball and field lines, estimate its own position, and play the match in real time — all while walking alone shakes the camera and piles error into gait-based odometry. Lighting differs from venue to venue. Falls happen constantly. Matches are single-elimination. In that environment, the grit to keep operating through unexpected situations decides wins and losses as much as algorithmic accuracy does.

## Role

At ROBIT, Kwangwoon University's robotics competition team, I led development of the full robot system (circuits, firmware, vision, control) for the RoboCup and International Robot Contest (IRC) humanoid leagues, and served as humanoid team leader in 2020. During this period the team won the RoboCup Korea Open twice (2019·2020), earned awards at RoboCup 2019 Sydney, and took the Grand Prize (Presidential Award) at IRC 2020.

The robots are 20–21 DoF humanoids: ROBOTIS Dynamixel actuators, a Logitech C920 camera, an Intel NUC (i5), a 6DoF IMU (MW-AHRSv1), and an STM32 control board I designed, developed on Linux, ROS, C/C++, and Qt.

## Key Contributions

- Designed and built the humanoid control circuits plus the STM32 firmware for motor and sensor control — the full stack from hardware to algorithms
- Developed the competition vision pipeline in OpenCV around color-based methods that hold up under changing light, which improved recognition stability indoors and outdoors
- Implemented Particle Filter-based visual localization: extract soccer-field lines → convert them to a likelihood model → use them as Particle Filter weights

### RoboCup 2019 Korea Open · Sydney (2019.02, 2019.07) — Champion · Awards in Sydney

We developed and entered an intelligent robot for humanoid soccer. The team won the Humanoid Soccer Kid event at the Korea Open in 2019.02; at the Sydney international competition that July, in the TeenSize class (mid-to-large humanoids), we took 2nd place in the Drop-In Challenge (matches played by mixed teams combining robots from different teams), 3rd in the Technical Challenge, and 4th in the main Soccer tournament.

My part was the goalkeeper algorithm and the Goal Kick algorithm. Depending on the distance to the detected ball, the goalkeeper either advances to kick it away or blocks while staying in line with it. Most teams pour their effort into offense and give the goalkeeper little weight; I figured stopping goals matters as much as scoring them, so I built it out properly. The Goal Kick algorithm covered the behavior and motion for volleying a ball passed in from the corner-kick spot into the goal.

![ROBIT humanoids on the field at RoboCup 2019 Sydney](/assets/img/projects/robit-robocup2019-sydney.jpg)
_RoboCup 2019 Sydney — ROBIT humanoids on the field_

### International Robot Contest (IRC) 2019 Robot Sports (2019.07 ~ 2019.10)

We competed with an intelligent humanoid robot in the curling and Tower of Hanoi events. My part covered the Tower of Hanoi algorithm, the color-recognition vision, and the robot control circuit.

- **Fall recovery**: Implemented the Tower of Hanoi algorithm so that even if the robot falls mid-match, it remembers the steps completed up to that point, gets back up, and resumes. In a single-elimination format, I judged it better to plan for falls and missed detections up front than to optimize for the clean run.
- **Color recognition**: Developed an HSV color-space vision algorithm that finds objects per target color and, when several share the same color, picks the largest one in the frame.
- **Video recording**: Also developed a video recording/playback program for match analysis.
- **Circuits & power**: Designed the robot control circuit around an STM32F446RE MCU so that a single battery powers the MCU, motors, and mini PC.

![IRC 2019 Humanoid Robot Sports competition venue](/assets/img/projects/robit-humanoid-1.jpg)
_IRC 2019 Humanoid Robot Sports competition venue_

### RoboCup 2020 Korea Open (2020.08) — Champion

We competed in the Humanoid Soccer Kid event again and won. I owned the localization algorithm for the soccer-field environment and the line-recognition vision.

The choice of approach came down to two facts. A humanoid sways so much while walking that dead-reckoning from internal sensors is hard to trust, and the soccer field has almost no features but does come with a map known in advance. So I combined probabilistic MCL with likelihood-field matching on the field lines.

- **Monte Carlo Localization (MCL)**: Applied Gaussian noise accounting for the robot's sway to an odometry model based on the robot's gait values. Pre-built a likelihood field of the field lines, then matched the recognized lines against it and took the highest-weight particle as the current position.
- **Resampling design call**: I deliberately left out the random sampling used for kidnap recovery. During a match the robot's position only changes continuously, so resampling around the current particles seemed the better trade.
- **Line recognition**: Processed in sequence — a binary image via HSV color-space thresholding, noise removal with morphological operations, then contours to detect outlines only. Working on outlines instead of every line pixel cut the computation, and the detected image points gave the actual distance to the robot.

### International Robot Contest (IRC) 2020 Humanoid Robot Sports, Intelligent High-Tech League (2020.08 ~ 2020.11) — Grand Prize (Presidential Award)

We competed in the Tower of Hanoi and athletics events, placed 3rd in the preliminary round, and won the Grand Prize (Presidential Award) at the main event. My part was feature-based localization.

I laid out a map of feature points for self-localization and, instead of standard MCL, implemented Augmented Monte Carlo Localization (AMCL), which randomly regenerates particles according to the ratio of average particle weights. The robot's gait served as the odometry model, and camera-measured distances to the feature points as the measurement model. That combination handles nonlinear situations such as the kidnapped-robot problem, where the robot's position changes abruptly.

At RoboCup earlier that year I had removed random sampling because positions only change continuously; at IRC, where a robot can be picked up and moved, I made the opposite call. Same filter, different event conditions, different design.

### Tools for the Team

I built tools alongside the match code. A motion-authoring program (ROBIT Teacher, Qt) creates motions for the 23 DoF humanoid and drives the motors straight from a PC; the same program pushes pose data over a serial converter to the Dynamixel actuators on a 485 bus (2020.07–08). For the curling event I built a vision tool that tunes HSV thresholds with sliders and records/replays match video, which cut down on-site tuning time.

![ROBIT motion program and Dynamixel serial control tool](/assets/img/projects/robit-motion-tool.jpg)
_Motion authoring and motor control tool (Qt): Dynamixel serial communication, PID setting, torque control UI_

![Curling vision tuning tool](/assets/img/projects/robit-curling-vision.jpg)
_Curling vision tool (Qt): HSV threshold tuning, per-color object classification, match video recording and playback_

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

Alongside competition preparation, I took part in outreach: running booths at local festivals and exhibitions, and refereeing robot competitions.

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
