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

광운대학교 로봇게임단 ROBIT에서 Humanoid Team Leader로 활동하며, RoboCup 휴머노이드 리그 참가용 로봇의 전체 시스템(회로, 펌웨어, 비전, 제어) 개발을 주도했다.

## 핵심 기여

- RoboCup 휴머노이드 리그 참가용 로봇 전체 시스템(회로, 펌웨어, 비전, 제어) 개발 주도
- OpenCV 기반 대회용 영상 처리 개발, 조명 변화에 강인한 색상 기반 기법으로 실내·실외 인식 안정성 향상
- Particle Filter 기반 영상 위치 추정(Visual Localization) 구현: 축구장 라인 추출 → Likelihood 모델 변환 → Particle Filter 가중치 활용
- 휴머노이드 제어 회로 설계·제작 및 STM 기반 펌웨어 개발(모터·센서 제어)

## 결과 / 수치

ROBIT 활동(2018.07 ~ 2021.12) 기간 중 다음 대회 성과를 거두었다.

- 대상(Presidential Award, 대통령상) — 국제로봇콘테스트 2020 Humanoid Robot Sports 우승 (산업통상자원부 & 서울과학기술대학교 주최), 2020.11
- 3위 — 국제로봇콘테스트 2020 Humanoid Robot Sports, 2020.11
- 우승 — RoboCup 2020 Korea Open Humanoid S, 2020.08
- 2위/3위 — RoboCup 2019 Sydney Open Humanoid League (TeenSize), 2019.07
- 우승 — RoboCup 2019 Korea Open Humanoid S, 2019.02

## 기술 스택

OpenCV · Particle Filter · STM32 · Embedded System
