---
title: "멀티 UAV 편대 제어 (NRF 안티드론 스웜)"
description: "불법드론 무력화를 위한 AI 기반 협력적 스웜 안티드론 시스템의 Multi-UAV 분산 포메이션 제어 연구 (한국연구재단 과제)."
date: 2024-02-29
period: "2022.03 ~ 2024.02"
category_label: Research
tech: [MATLAB, Pixhawk, ROS, UWB, IMU, Distributed Control, Formation Control, Virtual Leader, Graph Model]
layout: page
---

<div class="project-header">
  <span class="project-badge project-badge--{{ page.category_label | downcase }}">{{ page.category_label }}</span>
  <span class="project-header__period">{{ page.period }}</span>
  <span class="project-tags project-header__tags">
    {% for t in page.tech %}<span class="project-tag">{{ t }}</span>{% endfor %}
  </span>
</div>

한국연구재단(NRF)의 "불법드론 무력화를 위한 인공지능 기반의 협력적 자율주행 스웜 안티드론 시스템 개발" 과제에서 멀티 UAV 편대 제어(Multi-UAV Formation Control)를 연구했다. 다수의 무인항공기(UAV)가 중앙 통신 없이 스스로 포메이션(Formation)을 유지하는 분산 제어기를 개발해, 1대의 Virtual Leader(실기체가 아닌 가상 기준점)와 4대의 팔로워 구성에서 **포메이션 오차 ±0.2m 이하**를 확인했고, S자형 경로 추종 실험에서는 기존 알고리즘 대비 **위치 오차(MSE)를 약 61% 낮췄다**.

## 문제

안티드론 스웜은 여러 대의 UAV가 팀을 이뤄 불법드론에 협력적으로 대응하는 시스템이다. 어려움은 다수의 기체가 중앙 통신 없이, 이웃 기체와의 상대 벡터·거리 정보만으로 포메이션을 유지해야 한다는 데 있다. 비행이 길어질수록 센서 오차가 누적되고 기체 동역학의 비선형성까지 겹치는 상황에서, 포메이션 유지와 충돌 회피를 동시에 만족하는 제어기가 필요했다.

## 역할

고려대학교 Advanced Control System Lab 석사과정에서 참여한 과제로, Multi-UAV 협력 제어·충돌 회피 알고리즘 개발과 검증용 하드웨어 제작을 담당했다.

## 핵심 기여

- 최근 일정 구간(window)의 데이터만 학습에 사용하는 Finite-Memory(유한 메모리) 방식으로 분산 제어기를 설계해, 오차 누적과 비선형성에 강인한 제어 성능을 확보했다.
- 팔로워 간의 연결 관계(상대 거리·각도)를 그래프 기반 상호위상 모델(Graph Model)로 협력 항법에 반영해, 동적 포메이션의 안정성을 보장했다.
- 팔로워들이 실기체 리더가 아닌 공통의 가상 목표점(Virtual Leader)을 추종하는 구조로, 중앙 통신 없는 분산 협력 제어를 실현했다.
- 포메이션 비행 중 장애물을 피하는 충돌 회피 알고리즘을 개발하고 MATLAB 시뮬레이션으로 검증했다.
- 기체 간 상대 거리를 측정하는 UWB와 IMU를 탑재한 Pixhawk(오픈소스 비행 컨트롤러) 기반 헥사콥터를 제작하고, ROS 환경에서 알고리즘을 실기체로 검증했다.

## 결과

알고리즘은 MATLAB 시뮬레이션으로 먼저 검증했다. 장애물 회피와 Virtual Leader 추종 포메이션 유지가 의도대로 동작함을 확인한 뒤 실기체 실험으로 확장했다.

![장애물 회피 MATLAB 시뮬레이션](/assets/img/projects/multi-uav-obstacle-avoidance.jpg)
_장애물 회피 MATLAB 시뮬레이션 (UAV 3대)_

![포메이션 유지 MATLAB 시뮬레이션](/assets/img/projects/multi-uav-formation-flight.jpg)
_포메이션 유지 MATLAB 시뮬레이션 (Virtual Leader + 팔로워 4대)_

실기체 검증은 UWB·IMU·GPS와 Mini PC를 탑재한 Pixhawk 기반 헥사콥터로 진행했다. Virtual Leader를 추종하는 팔로워 4대의 편대 비행에서 포메이션 오차 **±0.2m 이하**와 빠른 수렴 특성을 확인했다.

![실험에 사용한 Pixhawk 기반 UAV 기체](/assets/img/projects/multi-uav-formation-control-1.jpg)
_실험에 사용한 Pixhawk 기반 UAV 기체 구성 (TAG·Mini PC·IMU·GPS 탑재)_

S자형 경로 추종 실험(시나리오 #1)에서는 기존 알고리즘 대비 위치 오차, 목적지 수렴 시간, 알고리즘 연산 시간이 모두 개선됐다.

| 지표 | 기존 알고리즘 | 제안 알고리즘 | 개선 |
|---|---|---|---|
| 위치 오차 (MSE) | 0.8974 | 0.3524 | 약 61% 감소 |
| 목적지 수렴 시간 (s) | 11 | 8 | 약 27% 단축 |
| 알고리즘 평균 연산 시간 (s) | 0.044 | 0.031 | 약 30% 단축 |

포메이션 비행 시연 영상:

{% include embed/youtube.html id='K2Jqm8zCsDo' %}
