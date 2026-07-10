---
title: "Multi-UAV Formation Control (NRF 안티드론 스웜)"
description: "불법드론 무력화를 위한 AI 기반 협력적 스웜 안티드론 시스템의 Multi-UAV 분산 포메이션 제어 연구 (NRF 과제)."
date: 2024-02-29
period: "2022.03 ~ 2024.02"
category_label: Research
tech: [MATLAB, Pixhawk, ROS, Distributed Control, Formation Control, Virtual Leader, Graph Model]
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

## 핵심 기여

- Multi-UAV Formation Control을 위한 Finite-Memory 분산 제어기 및 충돌 회피 알고리즘 개발
- 그래프 기반 상호위상 모델(Graph Model)과 Virtual Leader 구조를 활용해 중앙 통신 없는 분산 협력 제어 실현
- MATLAB 시뮬레이션으로 알고리즘을 선행 검증한 뒤, Pixhawk 하드웨어(1 Leader + 4 Followers) 실험으로 확장

## 결과 / 수치

Pixhawk 기반 1 Leader + 4 Followers 편대 비행 실험에서 포메이션 오차 **±0.2m 이내**를 검증했다.

## 기술 스택

MATLAB · Pixhawk · ROS · Distributed Control · Formation Control · Virtual Leader · Graph Model
