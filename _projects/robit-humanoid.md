---
title: "ROBIT 휴머노이드 로봇 (RoboCup · IRC)"
description: "회로·펌웨어·비전·제어 전체 시스템을 개발해 RoboCup Korea Open 우승 2회(2019·2020), RoboCup 2019 Sydney 국제대회 입상, IRC 2020 대상(대통령상)을 거둔 광운대 로봇게임단 ROBIT 활동."
date: 2021-12-31
period: "2018.07 ~ 2021.12"
category_label: Team
tech: [OpenCV, Particle Filter, STM32, Embedded System]
layout: page
---

<div class="project-header">
  <span class="project-badge project-badge--{{ page.category_label | downcase }}">{{ page.category_label }}</span>
  <span class="project-header__period">{{ page.period }}</span>
  <span class="project-tags project-header__tags">
    {% for t in page.tech %}<span class="project-tag">{{ t }}</span>{% endfor %}
  </span>
</div>

## 문제

휴머노이드 축구 로봇은 걷는 동작만으로도 카메라 영상이 흔들리고 보행 기반 Odometry에 오차가 쌓이는 상태에서, 공·라인 인식과 자기 위치 추정, 경기 동작까지 실시간으로 수행해야 한다. 경기장마다 조명이 다르고, 로봇이 넘어지는 낙상이 수시로 일어나며, 단판 승부로 결과가 갈리는 대회 환경에서는 알고리즘의 정확도만큼 예외 상황에서도 동작을 이어가는 강인함이 승패를 갈랐다.

## 역할

광운대학교 로봇게임단 ROBIT에서 Humanoid Team Leader로 활동하며, RoboCup·국제로봇콘테스트(IRC) 휴머노이드 리그 참가용 로봇의 전체 시스템(회로, 펌웨어, 비전, 제어) 개발을 주도했다. 이 기간 RoboCup Korea Open 우승 2회(2019·2020)와 RoboCup 2019 Sydney 국제대회 입상에 이어, IRC 2020에서 대상(대통령상)을 수상했다.

## 핵심 기여

- 휴머노이드 제어 회로를 직접 설계·제작하고 STM32 기반 펌웨어(모터·센서 제어)를 개발해 하드웨어부터 알고리즘까지 전체 시스템을 담당
- 조명 변화에 강인한 색상 기반 기법으로 OpenCV 대회용 영상 처리를 개발해 실내·실외 인식 안정성 향상
- Particle Filter 기반 영상 위치 추정(Visual Localization) 구현: 축구장 라인 추출 → Likelihood 모델 변환 → Particle Filter 가중치 활용

### RoboCup 2019 Korea Open · Sydney (2019.02, 2019.07)

휴머노이드 축구 경기를 위한 지능형 로봇을 개발해 참가했다. 2019.02 Korea Open Humanoid Soccer Kid 종목에서 우승했고, 2019.07 Sydney 국제대회 TeenSize(중대형 휴머노이드 체급) 종목에서는 Drop-In Challenge(서로 다른 팀의 로봇을 섞어 혼성 팀으로 치르는 경기) 2위, Technical Challenge 3위, Soccer 본선 4위를 기록했다.

담당 역할은 골키퍼 로봇 알고리즘과 Goal Kick 알고리즘 구현이다. 골키퍼 알고리즘은 공과의 거리에 따라 전진해 공을 차거나 공과 일직선을 유지하며 막는 방식으로, 대부분의 참가 팀이 공격 알고리즘 위주로 개발하는 것과 달리 골을 막는 것도 넣는 것만큼 중요하다고 보아 비중 있게 개발했다. Goal Kick 알고리즘은 코너킥 지점에서 패스된 공을 로봇이 발로 차 골대에 넣는 동작과 모션을 구현한 것이다.

### 국제로봇콘테스트(IRC) 2019 Robot Sports (2019.07 ~ 2019.10)

컬링과 하노이 탑 쌓기 종목에 지능형 휴머노이드 로봇으로 참가했다.

- **낙상 복구**: 하노이 탑 쌓기 알고리즘을 로봇이 경기 중 넘어지더라도 직전까지 수행한 작업을 기억해 재개하도록 구현했다. 단판 승부로 결과가 갈리는 대회 특성상 예상치 못한 상황에서도 작업을 완수하는 안정성이 중요했다.
- **색상 인식**: HSV 색공간 기반 비전 알고리즘을 개발해 동일 색상의 물체가 여럿일 때 가장 큰 물체를 인식하도록 구현했다.
- **영상 녹화**: 경기 분석을 위한 영상 녹화·재생 프로그램을 함께 개발했다.
- **회로·전원**: 로봇 제어 회로를 STM32F446RE MCU로 설계해 하나의 배터리로 MCU·모터·미니PC에 전원을 공급하도록 구현했다.

![IRC 2019 휴머노이드 로봇 스포츠 경기 현장](/assets/img/projects/robit-humanoid-1.jpg)
_IRC 2019 휴머노이드 로봇 스포츠 경기 현장_

### RoboCup 2020 Korea Open (2020.08) — 우승

Humanoid Soccer Kid 종목에 출전해 축구장 환경에서의 Localization 알고리즘 개발을 담당했다.

- **Monte Carlo Localization(MCL)**: 로봇의 보행 값을 기반으로 한 Odometry 모델에 로봇의 흔들림을 고려한 Gaussian noise를 반영하고, 경기장 라인의 Likelihood Field를 미리 만들어 로봇이 인식한 라인과 매칭하며 현재 위치를 갱신하도록 구현했다.
- **라인 인식**: HSV 색공간 이진화로 이진 영상을 만든 뒤 모폴로지 연산으로 노이즈를 제거하고, 컨투어로 외곽선만 검출해 연산량을 낮추면서 로봇까지의 실제 거리를 계산하는 순서로 처리했다.

### 국제로봇콘테스트(IRC) 2020 휴머노이드 로봇 스포츠 지능형 하이테크리그 (2020.08 ~ 2020.11) — 대상(대통령상)

하노이 탑 쌓기와 육상 경기 종목에 출전해 1차대회 3위를 거쳐 본대회에서 대상(대통령상)을 수상했다. 특징 기반 Localization 기술을 개발했으며, 기존 MCL 대신 Augmented Monte Carlo Localization(AMCL)을 구현해 particle의 가중치 평균 비율에 따라 particle을 랜덤으로 재생성하도록 했다. 이를 통해 로봇 위치가 급격히 바뀌는 Kidnap 문제와 같은 비선형적 상황에도 대응할 수 있도록 했다.

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

대회 준비와 병행해 지역 축제·전시 부스 운영과 로봇대회 심판 활동 등 대외 활동에도 참여했다.

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
