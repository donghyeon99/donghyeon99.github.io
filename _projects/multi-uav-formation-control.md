---
title: "Multi-UAV Formation Control (NRF 안티드론 스웜)"
description: "불법드론 무력화를 위한 AI 기반 협력적 스웜 안티드론 시스템의 Multi-UAV 분산 포메이션 제어 연구 (NRF 과제)."
date: 2024-02-29
period: "2022.03 ~ 2024.02"
category_label: Research
tech: [MATLAB, Pixhawk, ROS, Distributed Control, Formation Control, Virtual Leader, Graph Model]
video: https://www.youtube.com/watch?v=K2Jqm8zCsDo
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

한국연구재단(NRF) 프로젝트로, 불법드론을 무력화하기 위한 AI 기반 협력적 자율주행 스웜 안티드론 시스템을 개발했다. 다수의 UAV(Unmanned Aerial Vehicle)가 중앙 통신 없이 스스로 대형(Formation)을 유지하며 충돌을 회피하는 Multi-UAV Formation Control이 핵심 과제였다.

> 🎬 **시연 영상**: [YouTube에서 보기](https://www.youtube.com/watch?v=K2Jqm8zCsDo)

## 핵심 기여

- Multi-UAV Formation Control을 위한 Finite-Memory 분산 제어기 및 충돌 회피 알고리즘 개발
- 그래프 기반 상호위상 모델(Graph Model)과 Virtual Leader 구조를 활용해 중앙 통신 없는 분산 협력 제어 실현
- MATLAB 시뮬레이션으로 알고리즘을 선행 검증한 뒤, Pixhawk 하드웨어(1 Leader + 4 Followers) 실험으로 확장

![장애물 회피 시뮬레이션 (UAV 3대)](/assets/img/projects/multi-uav-obstacle-avoidance.jpg)
_장애물 회피 시뮬레이션 (UAV 3대)_

![포메이션 유지 비행 (Leader + Follower 4대)](/assets/img/projects/multi-uav-formation-flight.jpg)
_포메이션 유지 비행 (Leader + Follower 4대)_

![Pixhawk 기반 UAV 포메이션 비행 실험](/assets/img/projects/multi-uav-formation-control-1.jpg)
_Pixhawk 기반 UAV 포메이션 비행 실험_

## 결과 / 수치

Pixhawk 기반 1 Leader + 4 Followers 편대 비행 실험에서 포메이션 오차 **±0.2m 이내**를 검증했다.

S자형 경로 추종 실험(시나리오 #1)에서는 기존 알고리즘 대비 위치 오차, 목적지 수렴 시간, 알고리즘 연산 시간 모두 개선된 결과를 확인했다.

| 지표 | 기존 알고리즘 | 제안 알고리즘 |
|---|---|---|
| 위치 오차 (MSE) | 0.8974 | 0.3524 |
| 목적지 수렴 시간 (s) | 11 | 8 |
| 알고리즘 평균 연산 시간 (s) | 0.044 | 0.031 |

## 기술 스택

MATLAB · Pixhawk · ROS · Distributed Control · Formation Control · Virtual Leader · Graph Model
