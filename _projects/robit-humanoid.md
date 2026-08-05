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

RoboCup과 국제로봇콘테스트(IRC)에 나가는 휴머노이드를 회로부터 펌웨어·비전·제어까지 만들었다. RoboCup Korea Open 우승 2회, RoboCup 2019 Sydney 입상, 그리고 IRC 2020 대상(대통령상)이 이 기간의 결과다.

## 문제

휴머노이드 축구 로봇은 걷는 동작만으로 카메라가 흔들리고, 보행 기반 Odometry에는 오차가 쌓인다. 그 상태로 공·라인 인식, 자기 위치 추정, 경기 동작까지 실시간으로 해내야 한다. 경기장마다 조명이 다르고, 낙상은 수시로 일어나고, 단판 승부로 결과가 갈린다. 이런 환경에서는 알고리즘의 정확도만큼, 예외 상황에서도 동작을 이어가는 끈질김이 승패를 가른다.

## 역할

광운대학교 로봇게임단 ROBIT에서 RoboCup·국제로봇콘테스트(IRC) 휴머노이드 리그 참가용 로봇의 전체 시스템(회로, 펌웨어, 비전, 제어) 개발을 주도했고, 2020년에는 휴머노이드 팀 리더를 맡았다. 이 기간 RoboCup Korea Open에서 두 번 우승했고(2019·2020), RoboCup 2019 Sydney 국제대회 입상에 이어 IRC 2020에서 대상(대통령상)을 받았다.

로봇은 20~21 DoF 휴머노이드다. ROBOTIS Dynamixel 액추에이터, Logitech C920 카메라, Intel NUC(i5), 6DoF IMU(MW-AHRSv1)에 직접 설계한 STM32 제어보드를 얹은 구성으로, Linux·ROS·C/C++·Qt 환경에서 개발했다.

## 핵심 기여

- 휴머노이드 제어 회로를 직접 설계·제작하고 STM32 기반 펌웨어(모터·센서 제어)를 개발해 하드웨어부터 알고리즘까지 전체 시스템을 담당
- 조명 변화에 강인한 색상 기반 기법으로 OpenCV 대회용 영상 처리를 개발해 실내·실외 인식 안정성 향상
- Particle Filter 기반 영상 위치 추정(Visual Localization) 구현: 축구장 라인 추출 → Likelihood 모델 변환 → Particle Filter 가중치 활용

### RoboCup 2019 Korea Open · Sydney (2019.02, 2019.07)

휴머노이드 축구 경기를 위한 지능형 로봇을 개발해 참가했다. 2019.02 Korea Open Humanoid Soccer Kid 종목에서 우승했고, 2019.07 Sydney 국제대회 TeenSize(중대형 휴머노이드 체급) 종목에서는 Drop-In Challenge(서로 다른 팀의 로봇을 섞어 혼성 팀으로 치르는 경기) 2위, Technical Challenge 3위, Soccer 본선 4위를 기록했다.

내 역할은 골키퍼 알고리즘과 Goal Kick 알고리즘이었다. 골키퍼는 공과의 거리에 따라 전진해 걷어내거나, 공과 일직선을 유지하며 막는다. 대부분의 팀이 공격 알고리즘에 집중하지만 골을 막는 것도 넣는 것만큼 중요하다고 봐서 비중 있게 개발했다. Goal Kick은 코너킥 지점에서 패스된 공을 발로 차 골대에 넣는 동작과 모션을 구현했다.

![RoboCup 2019 Sydney 경기장에 선 ROBIT 휴머노이드들](/assets/img/projects/robit-robocup2019-sydney.jpg)
_RoboCup 2019 Sydney — 경기장에 선 ROBIT 휴머노이드들_

### 국제로봇콘테스트(IRC) 2019 Robot Sports (2019.07 ~ 2019.10)

컬링과 하노이 탑 쌓기 종목에 지능형 휴머노이드 로봇으로 참가했다.

- **낙상 복구**: 하노이 탑 쌓기 알고리즘을 로봇이 경기 중 넘어지더라도 직전까지 수행한 작업을 기억해 재개하도록 구현. 단판 승부로 결과가 갈리는 대회 특성상 예상치 못한 상황에서도 작업을 완수하는 안정성이 중요.
- **색상 인식**: HSV 색공간 기반 비전 알고리즘을 개발해 동일 색상의 물체가 여럿일 때 가장 큰 물체를 인식하도록 구현.
- **영상 녹화**: 경기 분석을 위한 영상 녹화·재생 프로그램을 함께 개발.
- **회로·전원**: 로봇 제어 회로를 STM32F446RE MCU로 설계해 하나의 배터리로 MCU·모터·미니PC에 전원을 공급하도록 구현.

![IRC 2019 휴머노이드 로봇 스포츠 경기 현장](/assets/img/projects/robit-humanoid-1.jpg)
_IRC 2019 휴머노이드 로봇 스포츠 경기 현장_

### RoboCup 2020 Korea Open (2020.08) — 우승

Humanoid Soccer Kid 종목에 출전해 축구장 환경에서의 Localization 알고리즘 개발을 맡았다.

- **Monte Carlo Localization(MCL)**: 로봇의 보행 값을 기반으로 한 Odometry 모델에 로봇의 흔들림을 고려한 Gaussian noise를 반영하고, 경기장 라인의 Likelihood Field를 미리 만들어 로봇이 인식한 라인과 매칭하며 현재 위치를 갱신하도록 구현.
- **Resampling 설계 판단**: Kidnap 대응용 random sampling은 일부러 뺐다. 경기 중 로봇 위치는 연속적으로만 변하기 때문에, 현재 particle 주변에서만 다시 뽑는 쪽이 낫다고 판단.
- **라인 인식**: HSV 색공간 이진화로 이진 영상을 만든 뒤 모폴로지 연산으로 노이즈를 제거하고, 컨투어로 외곽선만 검출해 연산량을 낮추면서 로봇까지의 실제 거리를 계산하는 순서로 처리.

### 국제로봇콘테스트(IRC) 2020 휴머노이드 로봇 스포츠 지능형 하이테크리그 (2020.08 ~ 2020.11) — 대상(대통령상)

하노이 탑 쌓기와 육상 경기 종목에 출전해 1차대회 3위를 거쳐 본대회에서 대상(대통령상)을 받았다. 특징 기반 Localization 기술을 개발했고, 기존 MCL 대신 particle의 가중치 평균 비율에 따라 particle을 랜덤으로 재생성하는 Augmented Monte Carlo Localization(AMCL)을 구현했다. 로봇 위치가 급격히 바뀌는 Kidnap 문제 같은 비선형적 상황에도 대응할 수 있다. 같은 해 RoboCup에서는 위치가 연속적으로 변한다는 이유로 random sampling을 뺐는데, IRC는 로봇을 들어 옮기는 상황이 생겨 반대 설계를 택했다. 같은 필터라도 종목 조건에 따라 설계가 달라진다는 걸 체감한 경험이다.

### 팀을 위한 도구들

경기 알고리즘만큼 도구도 만들었다. Linux 환경에서 23 DoF 휴머노이드의 모션을 만들고 PC에서 모터를 직접 제어하는 모션 프로그램(ROBIT Teacher, Qt)을 개발했고, PC와 Dynamixel 액추에이터를 시리얼 컨버터로 잇는 485 통신 프로그램도 함께 만들었다(2020.07~08). 컬링 종목용으로는 HSV 임계값을 슬라이더로 튜닝하고 경기 영상을 녹화·재생하는 비전 툴을 만들어 현장 튜닝 시간을 줄였다.

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

대회 준비와 병행해 지역 축제·전시 부스 운영, 로봇대회 심판 같은 대외 활동에도 참여했다.

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

- Designed and built the humanoid control circuits and developed STM32-based firmware (motor/sensor control), owning the full system from hardware to algorithms
- Developed competition vision processing based on OpenCV using color-based techniques robust to lighting changes, improving indoor/outdoor recognition stability
- Implemented Particle Filter-based visual localization: extracted soccer-field lines → converted them to a likelihood model → applied Particle Filter weighting

### RoboCup 2019 Korea Open · Sydney (2019.02, 2019.07)

We developed and entered an intelligent robot for humanoid soccer. The team won the Humanoid Soccer Kid event at the Korea Open in 2019.02; at the Sydney international competition that July, in the TeenSize class (mid-to-large humanoids), we took 2nd place in the Drop-In Challenge (matches played by mixed teams combining robots from different teams), 3rd in the Technical Challenge, and 4th in the main Soccer tournament.

My part was the goalkeeper algorithm and the Goal Kick algorithm. The goalkeeper either advances to kick the ball away or blocks while staying in line with it, depending on distance. Most teams pour their effort into offense; I figured stopping goals matters as much as scoring them, so the goalkeeper got real development weight. The Goal Kick algorithm implemented the behavior and motion of kicking a ball passed from the corner-kick spot into the goal.

![ROBIT humanoids on the field at RoboCup 2019 Sydney](/assets/img/projects/robit-robocup2019-sydney.jpg)
_RoboCup 2019 Sydney — ROBIT humanoids on the field_

### International Robot Contest (IRC) 2019 Robot Sports (2019.07 ~ 2019.10)

We competed with an intelligent humanoid robot in the curling and Tower of Hanoi events.

- **Fall recovery**: Implemented the Tower of Hanoi algorithm so that even if the robot falls mid-match, it remembers the work completed up to that point and resumes. Given the single-elimination format, the reliability to complete the task under unexpected situations is critical.
- **Color recognition**: Developed an HSV color-space vision algorithm that recognizes the largest object when multiple objects of the same color are present.
- **Video recording**: Also developed a video recording/playback program for match analysis.
- **Circuits & power**: Designed the robot control circuit around an STM32F446RE MCU so that a single battery powers the MCU, motors, and mini PC.

![IRC 2019 Humanoid Robot Sports competition venue](/assets/img/projects/robit-humanoid-1.jpg)
_IRC 2019 Humanoid Robot Sports competition venue_

### RoboCup 2020 Korea Open (2020.08) — Champion

We competed in the Humanoid Soccer Kid event again; I developed the localization algorithm for the soccer-field environment.

- **Monte Carlo Localization (MCL)**: Applied Gaussian noise accounting for the robot's sway to an odometry model based on the robot's gait values, and pre-built a likelihood field of the field lines so the current position is updated by matching against the lines the robot recognizes.
- **Resampling design call**: I deliberately left out the random sampling used for kidnap recovery. During a match the robot's position only changes continuously, so resampling around the current particles seemed the better trade.
- **Line recognition**: Processed in sequence — created a binary image via HSV color-space thresholding, removed noise with morphological operations, then detected only outlines via contours to lower computation while calculating the actual distance to the robot.

### International Robot Contest (IRC) 2020 Humanoid Robot Sports, Intelligent High-Tech League (2020.08 ~ 2020.11) — Grand Prize (Presidential Award)

We competed in the Tower of Hanoi and athletics events, placed 3rd in the preliminary round, and won the Grand Prize (Presidential Award) at the main event. I developed feature-based localization: instead of standard MCL, I implemented Augmented Monte Carlo Localization (AMCL), which randomly regenerates particles according to the ratio of average particle weights. That lets it handle nonlinear situations such as the kidnapped-robot problem, where the robot's position changes abruptly. At RoboCup earlier that year I had removed random sampling because positions only change continuously; at IRC, where a robot can be picked up and moved, I made the opposite call. Same filter, different event conditions, different design.

### Tools for the Team

I built tools alongside the match code. A motion-authoring program (ROBIT Teacher, Qt) creates motions for the 23 DoF humanoid and drives the motors straight from a PC, together with a 485 serial program linking the PC to the Dynamixel actuators (2020.07–08). For the curling event I built a vision tool that tunes HSV thresholds with sliders and records/replays match video, which cut down on-site tuning time.

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
