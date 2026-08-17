---
title: "OAFMCL: 다수 휴머노이드 로봇 협력 위치 추정"
title_en: "OAFMCL: Cooperative Localization for Multiple Humanoid Robots"
description: "다수 휴머노이드 로봇의 협력 위치 추정을 위해 유한 메모리 필터와 신경망을 융합한 OAFMCL 연구 — IEEE Trans. Industrial Electronics 게재, Robot Kidnapping 상황 평균 오차 0.07m."
description_en: "OAFMCL research fusing a finite-memory filter and neural networks for cooperative localization of multiple humanoid robots — published in IEEE Trans. Industrial Electronics, with an average error of 0.07 m under Robot Kidnapping."
date: 2024-02-29
period: "2022.03 ~ 2024.02"
category_label: Research
tech: [Finite-Memory Filter (FIR), Neural Network, Multisensor Fusion, RTLS, LiDAR, Odometry]
layout: portfolio
math: true
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

<p class="project-lead">보행 진동과 재귀 추정의 오차 누적에 대응하기 위해 유한 메모리 필터와 신경망을 융합한 OAFMCL 제안. Robot Kidnapping 상황 평균 오차 0.07m와 기존 알고리즘 대비 최대 80% 감소를 기록했으며 IEEE Transactions on Industrial Electronics에 1저자 논문으로 게재.</p>

<div class="project-metrics project-metrics--summary">
  <div class="project-metric"><strong>0.0474m</strong><span>정상 조건 RTAMSE</span></div>
  <div class="project-metric"><strong>0.0687m</strong><span>Robot Kidnapping RTAMSE</span></div>
  <div class="project-metric"><strong>최대 80%</strong><span>기존 알고리즘 대비 감소</span></div>
</div>

<div class="project-details" markdown="1">

## 문제

협력 위치 추정(Cooperative Localization)은 로봇끼리 상대 관측을 공유해 단일 로봇 추정의 한계를 보완하는 기법. 문제는 기존 연구 대부분이 바퀴로 구르는 이동 로봇(mobile robot)을 대상으로 한다는 점. 휴머노이드는 보행 중 몸체가 주기적으로 진동해 센서 노이즈가 크게 늘고, 기존 방법을 그대로 적용하면 LiDAR 기반 협력 위치 추정의 정확도가 급격히 떨어짐.

여기에 재귀(IIR) 구조의 추정기는 과거의 모든 데이터를 재귀적으로 쓰기 때문에 이 오차가 시간이 갈수록 쌓이는 구조. 결국 진동에 취약한 LiDAR 의존도를 낮출 보조 신호와 누적 오차를 구조적으로 끊는 새 추정기가 동시에 필요한 상황.

## 역할

협력 위치 추정 알고리즘 **OAFMCL(Odometry-Aided Finite-Memory Cooperative Localization)** 설계, 휴머노이드 3대 실증 실험, 제1저자 논문 작성.

## FMCL 추정기

- 최근 N개의 측정값만 슬라이딩 윈도(N=7)로 배치 처리하는 유한 메모리(finite-memory, FIR 필터) 기반 협력 위치 추정기 FMCL 설계. 목표는 재귀 추정의 오차 누적 억제. 오래된 측정을 아예 쓰지 않으므로 과거 오차가 쌓일 통로가 없고, 에러가 일정 범위 안에 머무는 구조

<div class="equation-panel" markdown="1">

**최근 측정의 증강 — Eq. (16)**

$$
Z_{m,n}=\begin{bmatrix}z_m^T & z_{m+1}^T & \cdots & z_n^T\end{bmatrix}^T,
\qquad m=k-N,\; n=k-1
$$

**비편향 추정을 위한 제약 — Eq. (25)**

$$
L_{m,n}T_{m,n}-A^N=0
$$

**유한 메모리 필터 이득 — Eq. (33)**

$$
L_{m,n}=A^N\left(T_{m,n}^T T_{m,n}\right)^{-1}T_{m,n}^T
$$

**FMCL 상태 추정 — Eq. (34)**

$$
\hat{x}_k=A^N\left(T_{m,n}^T T_{m,n}\right)^{-1}T_{m,n}^T Z_{m,n}
$$

여기서 $N$은 메모리 크기, $T_{m,n}$은 구간 $[m,n]$의 선형화된 측정 모델을 누적한 행렬. 실험에서는 $N=7$, $T=0.1\,\mathrm{s}$로 설정.

</div>

## Odometry-NN

- 진동에 취약한 LiDAR 의존도를 낮추기 위한 보조 신호로 Odometry-NN 개발. 보행 파라미터와 IMU의 피치·롤 같은 관절 움직임 데이터를 입력받아 보행 진동에 따른 오도메트리 노이즈 패턴을 학습하는 신경망
- 외부 센서 기반 FMCL과 내부 센서 기반 Odometry-NN의 추정치를 융합 신경망(Fusion NN)으로 통합해 최종 위치를 산출하는 OAFMCL 구조 제안

## 센서 구성과 협력 구조

- 고정 앵커 신호로 절대 위치를 추정하는 RTLS(Real-Time Location System) 태그 장착 Leader 1대, 저가형 LiDAR로 주변 로봇과의 상대 거리·방향을 재는 Follower 2대로 다중 로봇 협력 구조 구성

![Leader·Follower 휴머노이드와 탑재 센서 구성](/assets/img/projects/oafmcl-humanoid-localization-1.jpg)
_로봇 구성: Leader는 RTLS Tag로 절대 위치를, Follower는 저가형 LiDAR로 상대 거리·방향을 측정. 모든 로봇이 Mini PC와 IMU를 싣고 보행_

## 실험 환경

4.5m 간격의 고정 앵커 4개를 설치한 실내 환경에서 휴머노이드 로봇 3대로 실증 실험 수행. 정상 보행(Case 1)과 Robot Kidnapping(Case 2, 로봇이 갑자기 다른 위치로 옮겨지는 상황) 두 조건에서 성능 검증.

![실증 실험 환경 전경](/assets/img/projects/oafmcl-experiment-environment.jpg)
_실증 실험 환경: 4.5m 간격 고정 앵커 4개 안에서 휴머노이드 3대(Leader 1 + Follower 2)가 보행하며 위치 추정_

## 비교 결과

기존 협력 위치 추정 알고리즘 3종(추정 기반 MFDKF, 최적화 기반 NLSPGO, 오도메트리 기반 LHOL)과 RTAMSE(Root Time-Averaged Mean Square Error) 기준으로 비교. Robot Kidnapping 상황에서 OAFMCL이 평균 오차 0.07m로 가장 정확했고, LHOL 대비 최대 약 80% 오차 감소. 위치가 갑자기 바뀌는 상황에서는 오래된 측정을 버리는 유한 메모리 구조가 그대로 빠른 회복으로 이어진 결과.

같은 조건에서 odometry 보조가 없는 FMCL 단독(로봇 3대 평균 0.174m)과 비교해도 오차가 60% 이상 감소. 신경망 기반 오도메트리 융합의 기여를 따로 떼어 확인한 지점.

<div class="project-metrics">
  <div class="project-metric"><strong>0.0474m</strong><span>Normal condition RTAMSE</span></div>
  <div class="project-metric"><strong>0.0687m</strong><span>Robot Kidnapping RTAMSE</span></div>
  <div class="project-metric"><strong>약 80%</strong><span>LHOL 대비 최대 오차 감소</span></div>
</div>

| 조건 (RTAMSE, m) | OAFMCL | FMCL 단독 | MFDKF | NLSPGO | LHOL |
|---|---|---|---|---|---|
| Normal condition | **0.0474** | – | 0.1527 | 0.1012 | 0.0857 |
| Robot Kidnapping | **0.0687** | 0.1743 | 0.1103 | 0.0881 | 0.3791 |

_FMCL 단독 수치는 Robot Kidnapping 조건에서만 보고됨(로봇 3대 평균)._

이 연구는 IEEE Transactions on Industrial Electronics에 게재.

> [J1] D. H. Kim, J. M. Pak, P. Shi, and C. K. Ahn, "Finite-Memory CL Based on Multisensor Information Fusion Using Neural Networks for Multiple Humanoid Robots," *IEEE Transactions on Industrial Electronics*, vol. 73, no. 1, pp. 1384–1393, Jan. 2026. [DOI: 10.1109/TIE.2025.3600539](https://doi.org/10.1109/TIE.2025.3600539)

**시연 영상**: 다중 휴머노이드 로봇 실증 실험

</div>

</div>

<div class="lang-block" data-lang="en" lang="en" markdown="1">

<p class="project-lead">OAFMCL combines a finite-memory filter with neural networks to address walking vibration and recursive error accumulation. It achieved 0.07 m average error under Robot Kidnapping, up to 80% below existing algorithms, and was published as a first-author IEEE Transactions on Industrial Electronics paper.</p>

<div class="project-metrics project-metrics--summary">
  <div class="project-metric"><strong>0.0474m</strong><span>Normal-condition RTAMSE</span></div>
  <div class="project-metric"><strong>0.0687m</strong><span>Robot Kidnapping RTAMSE</span></div>
  <div class="project-metric"><strong>Up to 80%</strong><span>Reduction vs. prior algorithms</span></div>
</div>

<div class="project-details" markdown="1">

## Problem

Cooperative Localization compensates for the limitations of single-robot localization by sharing relative observations between robots, but most prior research targets wheeled mobile robots. A walking humanoid vibrates periodically, sensor noise rises sharply, and applying existing methods directly causes a steep drop in the accuracy of LiDAR-based cooperative localization.

Recursive (IIR) estimators make it worse: they reuse all past data, so the error keeps accumulating. Humanoids needed two things at once — an auxiliary signal that reduces dependence on vibration-vulnerable LiDAR, and a new estimator that structurally cuts off error accumulation.

## Role

Designed **OAFMCL (Odometry Aided Finite-Memory Cooperative Localization)**, conducted experiments with three humanoid robots, and wrote the first-author paper.

## FMCL Estimator

- Designed FMCL, a finite-memory (FIR filter)-based cooperative localization estimator that batch-processes only the most recent N measurements in a sliding window (N=7) to suppress the error-accumulation problem of recursive estimation — discarding old measurements blocks the accumulation of past errors at the source and keeps the error bounded

<div class="equation-panel" markdown="1">

**Augmented recent measurements — Eq. (16)**

$$
Z_{m,n}=\begin{bmatrix}z_m^T & z_{m+1}^T & \cdots & z_n^T\end{bmatrix}^T,
\qquad m=k-N,\; n=k-1
$$

**Unbiased-estimation constraint — Eq. (25)**

$$
L_{m,n}T_{m,n}-A^N=0
$$

**Finite-memory filter gain — Eq. (33)**

$$
L_{m,n}=A^N\left(T_{m,n}^T T_{m,n}\right)^{-1}T_{m,n}^T
$$

**FMCL state estimate — Eq. (34)**

$$
\hat{x}_k=A^N\left(T_{m,n}^T T_{m,n}\right)^{-1}T_{m,n}^T Z_{m,n}
$$

Here, $N$ is the memory size and $T_{m,n}$ stacks the linearized measurement model over $[m,n]$. The experiments used $N=7$ and $T=0.1\,\mathrm{s}$.

</div>

## Odometry-NN

- Developed Odometry-NN as an auxiliary signal to reduce dependence on vibration-vulnerable LiDAR — a neural network that takes joint-motion data (gait parameters and IMU pitch/roll) as input and learns the odometry noise pattern induced by walking vibration
- Proposed the OAFMCL architecture, which integrates the estimates of the external-sensor-based FMCL and the internal-sensor-based Odometry-NN through a fusion neural network (Fusion NN) to produce the final position

## Sensor Setup & Cooperative Structure

- Built a multi-robot cooperative structure with one Leader carrying an RTLS (Real-Time Location System) tag that estimates absolute position from fixed anchor signals, and two Followers that measure relative distance and direction to nearby robots with low-cost LiDAR

![Leader and Follower humanoids with onboard sensors](/assets/img/projects/oafmcl-humanoid-localization-1.jpg)
_Robot setup: the Leader carries an RTLS tag for absolute position, Followers measure relative range and bearing with low-cost LiDAR, and every robot walks with a Mini PC and IMU onboard_

## Experimental Setup

I conducted demonstration experiments with three humanoid robots inside four fixed anchors placed at 4.5 m intervals. The two cases were normal walking (Case 1) and Robot Kidnapping (Case 2, a robot suddenly moved to a different location).

![Demonstration experiment environment](/assets/img/projects/oafmcl-experiment-environment.jpg)
_Experiment environment: three humanoids (1 Leader + 2 Followers) walking inside four fixed anchors placed at 4.5 m intervals_

## Comparison Results

I compared OAFMCL against three existing cooperative localization algorithms (estimation-based MFDKF, optimization-based NLSPGO, and odometry-based LHOL) using RTAMSE (Root Time-Averaged Mean Square Error). Under Robot Kidnapping, OAFMCL was the most accurate at 0.07 m average error, up to about 80% below LHOL. When the position changes abruptly, discarding old measurements is exactly what lets the estimator recover quickly.

Under the same condition, OAFMCL also cut error by more than 60% versus FMCL alone without odometry aid (0.174 m averaged over three robots), which isolates the contribution of the neural-network-based odometry fusion.

<div class="project-metrics">
  <div class="project-metric"><strong>0.0474 m</strong><span>Normal-condition RTAMSE</span></div>
  <div class="project-metric"><strong>0.0687 m</strong><span>Robot-Kidnapping RTAMSE</span></div>
  <div class="project-metric"><strong>~80%</strong><span>Maximum error reduction vs. LHOL</span></div>
</div>

| Condition (RTAMSE, m) | OAFMCL | FMCL alone | MFDKF | NLSPGO | LHOL |
|---|---|---|---|---|---|
| Normal condition | **0.0474** | – | 0.1527 | 0.1012 | 0.0857 |
| Robot Kidnapping | **0.0687** | 0.1743 | 0.1103 | 0.0881 | 0.3791 |

_FMCL-alone figures are reported only for the Robot Kidnapping condition (averaged over three robots)._

This work was published in IEEE Transactions on Industrial Electronics.

> [J1] D. H. Kim, J. M. Pak, P. Shi, and C. K. Ahn, "Finite-Memory CL Based on Multisensor Information Fusion Using Neural Networks for Multiple Humanoid Robots," *IEEE Transactions on Industrial Electronics*, vol. 73, no. 1, pp. 1384–1393, Jan. 2026. [DOI: 10.1109/TIE.2025.3600539](https://doi.org/10.1109/TIE.2025.3600539)

**Demo video** — multi-humanoid-robot demonstration experiment:

</div>

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
