---
title: "골프카트 자율주행 위치추정·제어 모듈"
description: "RTK-GPS 기반 고정밀 위치 추정과 Pure Pursuit 조향 제어로 골프카트 자율주행 모듈을 개발하는 LUXROBO 프로젝트."
date: 2026-07-10
period: "2025.04 ~ 진행중"
category_label: Industry
tech: [RTK-GPS, GNSS, LiDAR, Pure Pursuit, EKF, MATLAB, C]
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

LUXROBO에서 진행 중인 골프 카트 자율 주행 모듈 개발 프로젝트로, 차량 위치 추정 및 주행 제어 모듈 개발을 담당하고 있다. RTK-GPS 기반 고정밀 위치 추정 알고리즘과 Pure Pursuit 기반 조향 제어 알고리즘을 MATLAB 시뮬레이션으로 검증한 뒤 실차 테스트를 수행 중이다.

## 핵심 기여

- RTK-GPS 기반 고정밀 위치 추정 알고리즘 구현 및 검증
- 주행 경로 계획 및 조향 제어 알고리즘(Pure Pursuit 등) 개발
- MATLAB 기반 시뮬레이션 환경 구축 및 실차 테스트 수행
- 실차 주행 로그(.bin) 기반 MATLAB 오프라인 시뮬레이션을 선행 구축하고, 자전거 모델(Bicycle Model) 기반 EKF 예측·보정 구조를 단계적으로 검증
- 상태 벡터(v, SlipAngle, YawRate, Yaw, x, y) 설계 및 Chi-square Gate 기반 GPS 측정값 유효성 판별 로직 구현
- GPS 품질에 따라 R 행렬을 동적으로 조정하고 INS/GPS 모드를 전환하는 로직 설계
- 시뮬레이션-펌웨어 간 위치 추정 결과 비교 및 실시간 주행 로그 재생 환경 구축
- 펌웨어 TASK 우선순위 및 실행 성능 기반 병목 분석 수행

## 결과 / 수치

자전거 모델 기반 EKF 예측·보정 구조를 시뮬레이션-펌웨어 비교 환경에서 단계적으로 검증했으며, 실차 테스트를 통해 위치 추정·제어 알고리즘을 계속 고도화하고 있다.

## 기술 스택

RTK-GPS · GNSS · LiDAR · Pure Pursuit · EKF · MATLAB · C
