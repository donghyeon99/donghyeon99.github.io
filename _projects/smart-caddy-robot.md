---
title: "자율주행 캐디 서비스 로봇 (Capstone)"
description: "GPS 사용자 추종과 2D LiDAR 장애물 회피를 Potential Field로 결합한 비대면 캐디 서비스 로봇 캡스톤 프로젝트."
date: 2021-12-31
period: "2021.01 ~ 2021.12"
category_label: Research
tech: [ROS, GPS, IMU, 2D LiDAR, Potential Field, ODE Simulation]
video: https://youtu.be/uAqilEhrqzE
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

골프장에서 사람 캐디 없이 자율 라운딩을 지원하는 비대면 캐디 서비스 로봇을 개발한 팀 리더 캡스톤 디자인 프로젝트다. ROS 기반으로 2D LiDAR 장애물 회피와 GPS 기반 사용자 추종을 결합해 실외 환경에서 동작하는 프로토타입을 제작했다. 이 작품으로 **제17회 광운 ICT 작품 전시회(KWIX)에서 최우수상(총장상)** 을 수상했다.

> 🎬 **시연 영상**: [Final Demo](https://youtu.be/uAqilEhrqzE) · [장애물 회피](https://youtu.be/JxvJmeS787U) · [ODE 시뮬레이션](https://youtu.be/_OWhjs1FOTs)

## 핵심 기여

- 사용자 리모컨의 GPS 위치로 목표점을 생성하고, Potential Field 주행 알고리즘으로 동적·정적 장애물 회피와 사용자 추종을 동시에 구현
- 사용자 방향으로의 인력(attractive force)과 장애물 척력(repulsive force)을 결합한 Potential Field 구조 설계
- GPS·IMU·2D LiDAR 인지 파이프라인 구축, IMU 기반 heading 추정과 북쪽 기준 좌표계 정규화 구현
- ODE(Open Dynamics Engine) 시뮬레이션으로 선행 검증한 뒤 실차 주행에 단계적으로 적용
- 전원·제어 회로 직접 설계 및 통합

## 결과 / 수치

ODE 시뮬레이션 기반 선행 검증을 거쳐 실외 환경 실차 프로토타입까지 단계적으로 완성했다.

![System Architecture](/assets/projects/caddy_architecture.png)
_시스템 아키텍처_

![Hardware Platform](/assets/projects/caddy_robot_HW.png)
_로봇 하드웨어 플랫폼_

![ODE-based Simulation](/assets/projects/caddy_ODE_sim_result.png)
_ODE 기반 시뮬레이션 결과_

## 기술 스택

ROS · GPS · IMU · 2D LiDAR · Potential Field · ODE Simulation

## 수상

<div class="project-certs">
  <figure><img src="/assets/img/awards/kwix2021-best-award.jpg" alt="제17회 광운 ICT 작품 전시회(KWIX) 최우수상 상장"><figcaption>제17회 광운 ICT 작품 전시회(KWIX) 최우수상 (총장상) — 작품명 "비대면 캐디 서비스 로봇"</figcaption></figure>
</div>
