---
title: "OAFMCL: 다수 휴머노이드 로봇 협력 위치 추정"
title_en: "OAFMCL: Cooperative Localization for Multiple Humanoid Robots"
description: "다수 휴머노이드 로봇의 협력 위치 추정을 위해 유한 메모리 필터와 신경망을 융합한 OAFMCL 연구 — IEEE Trans. Industrial Electronics 게재, Robot Kidnapping 상황 평균 오차 0.07m."
description_en: "OAFMCL research fusing a finite-memory filter and neural networks for cooperative localization of multiple humanoid robots — published in IEEE Trans. Industrial Electronics, with an average error of 0.07 m under Robot Kidnapping."
date: 2024-02-29
period: "2022.03 ~ 2024.02"
category_label: Research
tech: [Finite-Memory Filter (FIR), Neural Network, Multisensor Fusion, RTLS, LiDAR, Odometry]
layout: page
---

<div class="lang-page lang-page--own-title" data-cv-lang="en">
{% include lang-toggle.html %}

<div class="lang-block" data-lang="ko" lang="ko" markdown="1">

# OAFMCL: 다수 휴머노이드 로봇 협력 위치 추정

</div>

<div class="lang-block" data-lang="en" lang="en" markdown="1">

# OAFMCL: Cooperative Localization for Multiple Humanoid Robots

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

협력 위치 추정(Cooperative Localization)은 로봇 간 상대 관측 정보를 공유해 단일 로봇 위치 추정의 한계를 보완하는 기법이지만, 기존 연구는 대부분 이동 로봇(mobile robot)을 대상으로 진행. 휴머노이드 로봇은 보행 중 주기적인 몸체 진동으로 센서 노이즈가 크게 증가하는 특성이 있어, 이를 그대로 적용하면 LiDAR 기반 협력 위치 추정의 정확도가 급격히 저하. 게다가 재귀(IIR) 구조의 추정기는 과거의 모든 데이터를 재귀적으로 사용하기 때문에 이 오차가 시간이 지날수록 누적. 결국 휴머노이드에 협력 위치 추정을 적용하려면, 진동에 취약한 LiDAR 의존도를 낮출 보조 신호와 누적 오차를 구조적으로 차단하는 새로운 추정기가 함께 필요.

## 역할

고려대학교 Advanced Control System Lab 석사 과정(지도교수 Choon Ki Ahn)에서 수행한 학위 연구. 이 문제를 풀기 위해 협력 위치 추정 알고리즘 **OAFMCL(Odometry-Aided Finite-Memory Cooperative Localization)** 을 설계하고, 다중 휴머노이드 로봇 실증 실험까지 수행해 제1저자 논문으로 정리.

## 핵심 기여

- 재귀 추정의 오차 누적 문제를 억제하기 위해, 최근 N개의 측정값만 슬라이딩 윈도(N=7)로 배치 처리하는 유한 메모리(finite-memory, FIR 필터) 기반 협력 위치 추정기 FMCL을 설계 — 오래된 측정을 사용하지 않아 과거 오차의 누적이 원천 차단되고, 에러가 일정 범위 내로 제한
- 진동에 취약한 LiDAR 의존도를 낮추기 위해, 관절 움직임 데이터(보행 파라미터와 IMU의 피치·롤)를 입력으로 보행 진동에 따른 오도메트리 노이즈 패턴을 학습하는 Odometry-NN을 보조 신호로 개발
- 외부 센서 기반 FMCL과 내부 센서 기반 Odometry-NN의 추정치를 융합 신경망(Fusion NN)으로 통합해 최종 위치를 산출하는 OAFMCL 구조 제안
- 고정 앵커 신호로 절대 위치를 추정하는 RTLS(Real-Time Location System) 태그 장착 Leader 1대와, 저가형 LiDAR로 주변 로봇과의 상대 거리·방향을 측정하는 Follower 2대로 다중 로봇 협력 구조를 구성
- 4.5m 간격의 고정 앵커 4개를 설치한 실내 환경에서 휴머노이드 로봇 3대로 실증 실험을 수행하고, 정상 보행과 Robot Kidnapping(로봇이 갑자기 다른 위치로 옮겨지는 상황) 두 조건에서 성능을 검증

![다중 휴머노이드 로봇 실증 실험 환경](/assets/img/projects/oafmcl-humanoid-localization-1.jpg)
_실증 실험 환경 — 4.5m 간격 고정 앵커 4개, 휴머노이드 로봇 3대 (Leader 1 + Follower 2)_

## 결과

기존 협력 위치 추정 알고리즘 3종(추정 기반 MFDKF, 최적화 기반 NLSPGO, 오도메트리 기반 LHOL)과 RTAMSE(Root Time-Averaged Mean Square Error) 기준으로 비교. Robot Kidnapping 상황에서 OAFMCL은 평균 오차 0.07m로 비교 알고리즘 중 최고 정확도를 기록했고, 기존 알고리즘 대비 최대 약 80%(LHOL 대비) 오차 감소를 달성. 최근 N개의 측정만 사용해 과거 오차의 누적을 원천 차단하는 유한 메모리 구조가, 위치가 급변하는 상황에서의 강인함으로 이어진 결과. 같은 조건에서 odometry 보조가 없는 FMCL 단독(로봇 3대 평균 0.174m)과 비교해도 오차를 60% 이상 줄여, 신경망 기반 오도메트리 융합의 기여를 분리 확인.

| 조건 (RTAMSE, m) | OAFMCL | FMCL 단독 | MFDKF | NLSPGO | LHOL |
|---|---|---|---|---|---|
| Normal condition | **0.0474** | – | 0.1527 | 0.1012 | 0.0857 |
| Robot Kidnapping | **0.0687** | 0.1743 | 0.1103 | 0.0881 | 0.3791 |

_FMCL 단독 수치는 Robot Kidnapping 조건에서만 보고됨(로봇 3대 평균)._

이 연구는 IEEE Transactions on Industrial Electronics에 논문으로 게재.

> [J1] D. H. Kim, J. M. Pak, P. Shi, and C. K. Ahn, "Finite-Memory CL Based on Multisensor Information Fusion Using Neural Networks for Multiple Humanoid Robots," *IEEE Transactions on Industrial Electronics*, vol. 73, no. 1, pp. 1384–1393, Jan. 2026. [DOI: 10.1109/TIE.2025.3600539](https://doi.org/10.1109/TIE.2025.3600539)

**시연 영상** — 다중 휴머노이드 로봇 실증 실험:

</div>

<div class="lang-block" data-lang="en" lang="en" markdown="1">

## Problem

Cooperative Localization compensates for the limitations of single-robot localization by sharing relative observations between robots, but most prior research targets mobile robots. Humanoid robots exhibit sharply increased sensor noise from periodic body vibration while walking, so applying existing methods directly causes a steep drop in the accuracy of LiDAR-based cooperative localization. Moreover, recursive (IIR) estimators reuse all past data recursively, so this error accumulates over time. Applying cooperative localization to humanoids therefore requires both an auxiliary signal that reduces dependence on vibration-vulnerable LiDAR and a new estimator that structurally blocks error accumulation.

## Role

M.S. thesis research conducted at the Advanced Control System Lab, Korea University (Advisor: Prof. Choon Ki Ahn). Designed the cooperative localization algorithm **OAFMCL (Odometry Aided Finite-Memory Cooperative Localization)** to solve this problem, carried out demonstration experiments with multiple humanoid robots, and published the work as a first-author paper.

## Key Contributions

- Designed FMCL, a finite-memory (FIR filter)-based cooperative localization estimator that batch-processes only the most recent N measurements in a sliding window (N=7) to suppress the error-accumulation problem of recursive estimation — discarding old measurements blocks the accumulation of past errors at the source and keeps the error bounded
- Developed Odometry-NN as an auxiliary signal to reduce dependence on vibration-vulnerable LiDAR — a neural network that takes joint-motion data (gait parameters and IMU pitch/roll) as input and learns the odometry noise pattern induced by walking vibration
- Proposed the OAFMCL architecture, which integrates the estimates of the external-sensor-based FMCL and the internal-sensor-based Odometry-NN through a fusion neural network (Fusion NN) to produce the final position
- Built a multi-robot cooperative structure with one Leader carrying an RTLS (Real-Time Location System) tag that estimates absolute position from fixed anchor signals, and two Followers measuring relative distance/direction to nearby robots with low-cost LiDAR
- Conducted demonstration experiments with three humanoid robots in an indoor environment with four fixed anchors placed at 4.5 m intervals, validating performance under two conditions: normal walking and Robot Kidnapping (a robot suddenly moved to a different location)

![Multi-humanoid-robot demonstration experiment environment](/assets/img/projects/oafmcl-humanoid-localization-1.jpg)
_Demonstration experiment environment — four fixed anchors at 4.5 m intervals, three humanoid robots (1 Leader + 2 Followers)_

## Results

Compared against three existing cooperative localization algorithms (estimation-based MFDKF, optimization-based NLSPGO, and odometry-based LHOL) using RTAMSE (Root Time-Averaged Mean Square Error). Under Robot Kidnapping, OAFMCL recorded the best accuracy among the compared algorithms with an average error of 0.07 m, reducing error by up to about 80% (vs. LHOL) compared to existing algorithms. The finite-memory structure — using only the most recent N measurements to block the accumulation of past errors at the source — translated into robustness in situations where the position changes abruptly. Under the same condition, OAFMCL also cut error by more than 60% versus FMCL alone without odometry aid (0.174 m averaged over three robots), isolating the contribution of the neural-network-based odometry fusion.

| Condition (RTAMSE, m) | OAFMCL | FMCL alone | MFDKF | NLSPGO | LHOL |
|---|---|---|---|---|---|
| Normal condition | **0.0474** | – | 0.1527 | 0.1012 | 0.0857 |
| Robot Kidnapping | **0.0687** | 0.1743 | 0.1103 | 0.0881 | 0.3791 |

_FMCL-alone figures are reported only for the Robot Kidnapping condition (averaged over three robots)._

This work was published in IEEE Transactions on Industrial Electronics.

> [J1] D. H. Kim, J. M. Pak, P. Shi, and C. K. Ahn, "Finite-Memory CL Based on Multisensor Information Fusion Using Neural Networks for Multiple Humanoid Robots," *IEEE Transactions on Industrial Electronics*, vol. 73, no. 1, pp. 1384–1393, Jan. 2026. [DOI: 10.1109/TIE.2025.3600539](https://doi.org/10.1109/TIE.2025.3600539)

**Demo video** — multi-humanoid-robot demonstration experiment:

</div>

{% include embed/youtube.html id='ueaxI5FNc_w' %}

<div class="lang-block" data-lang="ko" lang="ko" markdown="1">

---

[← 모든 프로젝트 보기](/projects/){: .project-nav-link } · [CV 보기](/cv/){: .project-nav-link }

</div>

<div class="lang-block" data-lang="en" lang="en" markdown="1">

---

[← All Projects](/projects/){: .project-nav-link } · [View CV](/cv/){: .project-nav-link }

</div>

</div>
