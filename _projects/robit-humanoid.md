---
title: "ROBIT 휴머노이드 로봇 (RoboCup)"
description: "RoboCup 휴머노이드 리그 출전을 위해 회로·펌웨어·비전·제어 전체 시스템을 개발한 광운대 로봇게임단 ROBIT 활동."
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

## 개요

광운대학교 로봇게임단 ROBIT에서 Humanoid Team Leader로 활동하며, RoboCup 휴머노이드 리그 참가용 로봇의 전체 시스템(회로, 펌웨어, 비전, 제어) 개발을 주도했다. 학부 동아리 활동으로 국내외 대회 참가(호주 시드니 원정 포함)와 지역 과학축제 부스 운영·시연 등 대외 활동을 병행했다.

## 핵심 기여

- RoboCup 휴머노이드 리그 참가용 로봇 전체 시스템(회로, 펌웨어, 비전, 제어) 개발 주도
- OpenCV 기반 대회용 영상 처리 개발, 조명 변화에 강인한 색상 기반 기법으로 실내·실외 인식 안정성 향상
- Particle Filter 기반 영상 위치 추정(Visual Localization) 구현: 축구장 라인 추출 → Likelihood 모델 변환 → Particle Filter 가중치 활용
- 휴머노이드 제어 회로 설계·제작 및 STM 기반 펌웨어 개발(모터·센서 제어)

## 활동 사진

![IRC 2019 휴머노이드 로봇 스포츠 경기 현장](/assets/img/projects/robit-humanoid-1.jpg)
_IRC 2019 휴머노이드 로봇 스포츠 경기 현장_

![2019 노원미래과학축제 ROBIT 부스](/assets/img/projects/robit-humanoid-2.jpg)
_2019 노원미래과학축제 ROBIT 부스_

## 활동 타임라인

| 시기 | 내용 |
|---|---|
| 2021.09 | 제17회 광운 ICT 작품 전시회(KWIX) 최우수상 (총장상) |
| 2020.11 | 국제로봇콘테스트(IRC) 2020 휴머노이드 로봇 스포츠 대상 (대통령상) 및 3위 |
| 2020.08 | RoboCup 2020 Korea Open 휴머노이드 우승 |
| 2019.10 | 노원미래과학축제 부스 운영 (휴머노이드 로봇 시연) |
| 2019.07 | RoboCup 2019 Sydney 국제대회 원정 — TeenSize Drop-In Challenge 2위, Technical Challenge 3위, Soccer 본선 4위 |
| 2019.02 | RoboCup 2019 Korea Open 휴머노이드 우승 |

## 수상 기록 (상장)

![RoboCup 2019 Sydney TeenSize Drop-In Challenge 2위 상장](/assets/img/awards/robocup2019-sydney-dropin-2nd.jpg)
_RoboCup 2019 Sydney — TeenSize Drop-In Challenge, Second Place_

![RoboCup 2019 Sydney TeenSize Technical Challenge 3위 상장](/assets/img/awards/robocup2019-sydney-technical-3rd.jpg)
_RoboCup 2019 Sydney — TeenSize Technical Challenge, Third Place_

![국제로봇콘테스트 2020 대통령상 상장](/assets/img/awards/irc2020-presidential.jpg)
_국제로봇콘테스트 2020 휴머노이드 로봇 스포츠 — 대상 (대통령상)_

## 언론 보도

- [광운대 로봇게임단 '로빛(Roːbit)', 세계로봇대회 'RoboCup 2019' 3개 부문 수상](https://www.straightnews.co.kr/news/articleView.html?idxno=52035) — 스트레이트뉴스, 2019.07
- [Ro:bit, '2020 코리아 로보컵 오픈대회' 대학부 1위](https://ei.kw.ac.kr/community/newsletter.php?BoardMode=view&UID=951) — 광운대 전자정보공과대학, 2020.09
- [2020 코리아 로보컵 오픈대회, 온라인으로 성료](https://www.irobotnews.com/news/articleView.html?idxno=22095) — 로봇신문, 2020.08
- [세계에 광운의 이름을 알리는 광운대 로봇게임단 '로빛(ROBIT)'](https://www.dhnews.co.kr/news/articleView.html?idxno=128915) — 대학저널, 2021.07

## 기술 스택

OpenCV · Particle Filter · STM32 · Embedded System
