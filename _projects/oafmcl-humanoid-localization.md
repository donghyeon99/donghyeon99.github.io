---
title: "OAFMCL: 다수 휴머노이드 로봇 협력 위치 추정"
description: "다수 휴머노이드 로봇의 협력 위치 추정을 위해 유한 메모리 필터와 신경망을 융합한 OAFMCL 연구 — IEEE Trans. Industrial Electronics 게재, Robot Kidnapping 상황 평균 오차 0.07m."
date: 2024-02-29
period: "2022.03 ~ 2024.02"
category_label: Research
tech: [Finite-Memory Filter (FIR), Neural Network, Multisensor Fusion, RTLS, LiDAR, Odometry]
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

협력 위치 추정(Cooperative Localization)은 로봇 간 상대 관측 정보를 공유해 단일 로봇 위치 추정의 한계를 보완하는 기법이지만, 기존 연구는 대부분 이동 로봇(mobile robot)을 대상으로 이뤄져 왔다. 휴머노이드 로봇은 보행 중 주기적인 몸체 진동으로 센서 노이즈가 크게 증가하는 특성이 있어, 이를 그대로 적용하면 LiDAR 기반 협력 위치 추정의 정확도가 급격히 떨어진다. 게다가 재귀(IIR) 구조의 추정기는 과거의 모든 데이터를 재귀적으로 사용하기 때문에 이 오차가 시간이 지날수록 누적된다. 결국 휴머노이드에 협력 위치 추정을 적용하려면, 진동에 취약한 LiDAR 의존도를 낮출 보조 신호와 누적 오차를 구조적으로 차단하는 새로운 추정기가 함께 필요했다.

## 역할

고려대학교 Advanced Control System Lab 석사 과정(지도교수 Choon Ki Ahn)에서 수행한 학위 연구다. 이 문제를 풀기 위해 협력 위치 추정 알고리즘 **OAFMCL(Odometry-Aided Finite-Memory Cooperative Localization)** 을 설계하고, 다중 휴머노이드 로봇 실증 실험까지 수행해 제1저자 논문으로 정리했다.

## 핵심 기여

- 재귀 추정의 오차 누적 문제를 억제하기 위해, 최근 N개의 측정값만 슬라이딩 윈도(N=7)로 배치 처리하는 유한 메모리(finite-memory, FIR 필터) 기반 협력 위치 추정기 FMCL을 설계 — 오래된 측정을 사용하지 않아 과거 오차의 누적이 원천 차단되고, 에러가 일정 범위 내로 제한된다
- 진동에 취약한 LiDAR 의존도를 낮추기 위해, 관절 움직임 데이터(보행 파라미터와 IMU의 피치·롤)를 입력으로 보행 진동에 따른 오도메트리 노이즈 패턴을 학습하는 Odometry-NN을 보조 신호로 개발
- 외부 센서 기반 FMCL과 내부 센서 기반 Odometry-NN의 추정치를 융합 신경망(Fusion NN)으로 통합해 최종 위치를 산출하는 OAFMCL 구조 제안
- 고정 앵커 신호로 절대 위치를 추정하는 RTLS(Real-Time Location System) 태그 장착 Leader 1대와, 저가형 LiDAR로 주변 로봇과의 상대 거리·방향을 측정하는 Follower 2대로 다중 로봇 협력 구조를 구성
- 4.5m 간격의 고정 앵커 4개를 설치한 실내 환경에서 휴머노이드 로봇 3대로 실증 실험을 수행하고, 정상 보행과 Robot Kidnapping(로봇이 갑자기 다른 위치로 옮겨지는 상황) 두 조건에서 성능을 검증

![다중 휴머노이드 로봇 실증 실험 환경](/assets/img/projects/oafmcl-humanoid-localization-1.jpg)
_실증 실험 환경 — 4.5m 간격 고정 앵커 4개, 휴머노이드 로봇 3대 (Leader 1 + Follower 2)_

## 결과

기존 협력 위치 추정 알고리즘 3종(추정 기반 MFDKF, 최적화 기반 NLSPGO, 오도메트리 기반 LHOL)과 RTAMSE(Root Time-Averaged Mean Square Error) 기준으로 비교했다. Robot Kidnapping 상황에서 OAFMCL은 평균 오차 0.07m로 비교 알고리즘 중 최고 정확도를 기록했고, 기존 알고리즘 대비 최대 약 80%(LHOL 대비) 오차 감소를 달성했다. 최근 N개의 측정만 사용해 과거 오차의 누적을 원천 차단하는 유한 메모리 구조가, 위치가 급변하는 상황에서의 강인함으로 이어진 것이다. 같은 조건에서 odometry 보조가 없는 FMCL 단독(로봇 3대 평균 0.174m)과 비교해도 오차를 60% 이상 줄여, 신경망 기반 오도메트리 융합의 기여를 분리 확인했다.

| 조건 (RTAMSE, m) | OAFMCL | FMCL 단독 | MFDKF | NLSPGO | LHOL |
|---|---|---|---|---|---|
| Normal condition | **0.0474** | – | 0.1527 | 0.1012 | 0.0857 |
| Robot Kidnapping | **0.0687** | 0.1743 | 0.1103 | 0.0881 | 0.3791 |

_FMCL 단독 수치는 Robot Kidnapping 조건에서만 보고됨(로봇 3대 평균)._

이 연구는 IEEE Transactions on Industrial Electronics 게재 논문으로 이어졌다.

> [J1] D. H. Kim, J. M. Pak, P. Shi, and C. K. Ahn, "Finite-Memory CL Based on Multisensor Information Fusion Using Neural Networks for Multiple Humanoid Robots," *IEEE Transactions on Industrial Electronics*, vol. 73, no. 1, pp. 1384–1393, Jan. 2026. [DOI: 10.1109/TIE.2025.3600539](https://doi.org/10.1109/TIE.2025.3600539)

**시연 영상** — 다중 휴머노이드 로봇 실증 실험:

{% include embed/youtube.html id='ueaxI5FNc_w' %}
