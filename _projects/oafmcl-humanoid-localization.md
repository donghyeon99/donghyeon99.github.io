---
title: "OAFMCL: 다수 휴머노이드 로봇 협력 위치 추정"
description: "다수 휴머노이드 로봇의 분산 위치 추정을 위해 유한 메모리 필터와 신경망을 융합한 협력 위치 추정 알고리즘(OAFMCL) 연구."
date: 2024-02-29
period: "2022.03 ~ 2024.02"
category_label: Research
tech: [Finite-Memory Filter (FIR), Neural Network, Multisensor Fusion, RTLS, LiDAR, Odometry]
video: https://www.youtube.com/watch?v=ueaxI5FNc_w
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

휴머노이드 로봇은 보행 중 발생하는 진동으로 인해 내장 센서(오도메트리)의 노이즈가 커지고, 기존의 재귀 추정(IIR) 기반 위치 추정 알고리즘은 이 노이즈가 누적되어 시간이 지날수록 오차가 커지는 문제가 있다. 고려대학교 Advanced Control System Lab 석사 과정(지도교수 Choon Ki Ahn)에서 이 문제를 해결하기 위해 유한 메모리(FIR, Finite-Memory) 기반의 협력 위치 추정 알고리즘 **OAFMCL(Odometry Aided Finite-Memory Cooperative Localization)** 을 설계했다. 이 연구는 IEEE Transactions on Industrial Electronics에 게재된 논문으로 이어졌다.

> 🎬 **시연 영상**: [YouTube에서 보기](https://www.youtube.com/watch?v=ueaxI5FNc_w)

> [J1] D. H. Kim, et al., "Finite-Memory Cooperative Localization via Multisensor Fusion using Neural Networks for Multiple Humanoid Robots," *IEEE Transactions on Industrial Electronics*, vol. 73, no. 1, pp. 1384–1393, Jan. 2026.

## 핵심 기여

- 외부 센서 기반 FMCL(Finite-Memory Cooperative Localization)과 내부 센서 기반 Odometry-NN을 신경망(Fusion NN)으로 융합하는 구조를 설계해, 로봇 보행 진동에 강인한 위치 추정을 실현
- Odometry-NN은 관절 움직임 데이터를 입력으로 사용해 보행 진동에 따른 오도메트리 노이즈 패턴을 학습
- Leader(RTLS 태그 기반 고정 앵커 절대 위치) + Follower(저가형 LiDAR 기반 상대 거리·방향)로 구성된 다중 휴머노이드 로봇 협력 위치 추정 구조 설계
- Robot Kidnapping(로봇이 갑자기 다른 위치로 이동하는 상황) 대응을 위한 유한 메모리 구조 검증
- 다중 휴머노이드 로봇 환경(RTLS Leader + LiDAR Followers)에서 실증 실험 수행

![다중 휴머노이드 로봇 실증 실험 (RTLS Leader + LiDAR Followers)](/assets/img/projects/oafmcl-humanoid-localization-1.jpg)
_다중 휴머노이드 로봇 실증 실험 (RTLS Leader + LiDAR Followers)_

## 결과 / 수치

RTAMSE(Root Time-Averaged Mean Square Error, meter) 기준으로 기존 알고리즘(MFDKF, NLSPGO, LHOL) 대비 성능을 비교했다. Robot Kidnapping 상황에서는 기존 알고리즘 대비 약 80% 오차 감소, 평균 오차 0.07m를 달성했다.

| 조건 | OAFMCL | MFDKF | NLSPGO | LHOL |
|---|---|---|---|---|
| Normal condition | **0.0474** | 0.1527 | 0.1012 | 0.0857 |
| Robot Kidnapping | **0.0687** | 0.1103 | 0.0881 | 0.3791 |

## 기술 스택

Finite-Memory Filter (FIR) · Neural Network · Multisensor Fusion · RTLS · LiDAR · Odometry
