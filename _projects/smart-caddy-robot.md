---
title: "자율주행 캐디 서비스 로봇 (Capstone)"
title_en: "Autonomous Caddy Service Robot (Capstone)"
description: "GPS 사용자 추종과 2D LiDAR 장애물 회피를 Potential Field로 결합한 비대면 캐디 서비스 로봇 — KWIX 최우수상(총장상) 수상 캡스톤 프로젝트."
description_en: "Contactless caddy service robot combining GPS user-following with 2D LiDAR obstacle avoidance via Potential Field — capstone project awarded the KWIX Excellence Award (University President's Award)."
date: 2021-12-31
period: "2021.01 ~ 2021.12"
category_label: Team
tech: [ROS, GPS, IMU, 2D LiDAR, Potential Field, ODE Simulation]
layout: page
---

<div class="lang-page lang-page--own-title" data-cv-lang="en">
{% include lang-toggle.html %}

<div class="lang-block" data-lang="ko" lang="ko" markdown="1">

# 자율주행 캐디 서비스 로봇 (Capstone)

</div>
<div class="lang-block" data-lang="en" lang="en" markdown="1">

# Autonomous Caddy Service Robot (Capstone)

</div>

<div class="project-header">
  <span class="project-badge project-badge--{{ page.category_label | downcase }}">{{ page.category_label }}</span>
  <span class="project-header__period">{{ page.period }}</span>
  <span class="project-tags project-header__tags">
    {% for t in page.tech %}<span class="project-tag">{{ t }}</span>{% endfor %}
  </span>
</div>

<div class="lang-block" data-lang="ko" lang="ko" markdown="1">

## 개요

골프장에서 사람 캐디 없이 자율 라운딩을 지원하는 로봇을 개발한 캡스톤 디자인 프로젝트(공식 작품명 "비대면 캐디 서비스 로봇"). 4인 팀의 리더로서 ROS 기반 시스템 설계부터 실차 프로토타입 제작까지 이끌었고, 이 작품으로 **제17회 광운 ICT 작품 전시회(KWIX) 최우수상(총장상)** 을 수상.

> 🎬 **시연 영상**: [Final Demo](https://youtu.be/uAqilEhrqzE) · [장애물 회피](https://youtu.be/JxvJmeS787U) · [ODE 시뮬레이션](https://youtu.be/_OWhjs1FOTs)

## 문제

사람 캐디 없이 골프백을 옮기려면, 로봇이 실외 환경에서 사용자를 놓치지 않고 따라가면서 이동 중 마주치는 정적·동적 장애물을 동시에 회피 필요. 사용자 추종과 장애물 회피는 진행 방향이 서로 충돌할 수 있는 목표라서, 두 동작을 하나의 주행 알고리즘으로 결합하는 것이 핵심 과제. 또한 실외 주행에서는 기준이 서로 다른 GPS·IMU 좌표계를 일관되게 정렬해야 주행이 안정됨.

## 역할

팀 리더로서 ROS 기반 시스템의 설계와 구현 총괄. 자율주행·추종 알고리즘과 GPS·IMU·2D LiDAR 인지 파이프라인, 전원·제어 회로의 설계·통합을 직접 담당.

![캐디 로봇 실차 프로토타입 — 골프백을 실은 로봇 사진과 하드웨어 스펙 표(무게 15kg, 바퀴 지름 30cm, 50×86×105cm)](/assets/img/projects/smart-caddy-hardware.jpg)
_실차 프로토타입 하드웨어 — 50×86×105cm(W×H×L), 15kg, 바퀴 지름 30cm_

## 핵심 기여

- 사용자 리모컨의 GPS 위치로 목표점을 생성하고, 사용자 방향 인력(attractive force)과 장애물 척력(repulsive force)을 결합한 Potential Field 주행 알고리즘으로 사용자 추종과 동적·정적 장애물 회피를 동시에 구현
- GPS·IMU·2D LiDAR를 통합한 인지 파이프라인을 구축하고, IMU 기반 heading 추정과 북쪽 기준 좌표계 정규화로 주행 안정성 확보
- ODE(Open Dynamics Engine) 시뮬레이션 환경에서 알고리즘을 선행 검증한 뒤 실차 주행에 적용
- 전원·제어 회로를 직접 설계·통합해 실외 주행이 가능한 로봇 플랫폼 완성

![메인 PC와 CORTEX-M4 서브 컨트롤러가 시리얼로 연결되고 사용자 리모컨(ESP-32·GPS)이 블루투스로 통신하는 시스템 아키텍처 블록 다이어그램](/assets/img/projects/smart-caddy-system-architecture.jpg)
_시스템 아키텍처 — 메인 PC(ROS)와 CORTEX-M4 서브 컨트롤러를 시리얼로 연결하고, 사용자 리모컨(ESP-32·GPS)이 블루투스로 목표 위치 전달_

![Potential Field에서 Mobile Kinematics, 속도·전류 PI 제어기로 이어지는 제어 시스템 블록 다이어그램](/assets/img/projects/smart-caddy-control-system.jpg)
_제어 구조 — Potential Field가 출력한 속도 명령을 Mobile Kinematics로 바퀴별 각속도로 변환하고, 속도·전류 PI 제어기로 모터 구동_

![GPS·블루투스 입력을 받는 Caddy serial 노드와 IMU·LiDAR 입력으로 속도 명령을 생성하는 Caddy navigation 노드의 ROS 노드 구성도](/assets/img/projects/smart-caddy-ros-nodes.jpg)
_ROS 노드 구성 — Caddy serial 노드가 GPS·블루투스 입력을 받아 MCU와 통신하고, Caddy navigation 노드가 IMU·LiDAR 입력으로 속도 명령 생성_

## 결과

ODE 시뮬레이션으로 정적·동적 장애물 회피를 선행 검증한 뒤, 50×86×105cm·15kg 실차 프로토타입을 제작해 실외 환경에서 GPS 사용자 추종·장애물 회피 주행 시연(시연 영상 3편).

![ODE 시뮬레이션에서 로봇(노란색)이 정적 장애물(회색)과 동적 장애물(초록색)을 회피하며 목표점(빨간색)까지 주행한 경로 화면](/assets/img/projects/smart-caddy-ode-sim.jpg)
_ODE 기반 Potential Field 시뮬레이션 — 정적·동적 장애물을 회피하며 목표점에 도달하는 주행 경로_

## 수상

<div class="project-certs">
  <figure><img src="/assets/img/awards/kwix2021-best-award.jpg" alt="제17회 광운 ICT 작품 전시회(KWIX) 최우수상 상장"><figcaption>제17회 광운 ICT 작품 전시회(KWIX) 최우수상 (총장상) — 작품명 "비대면 캐디 서비스 로봇"</figcaption></figure>
</div>

---

[← 모든 프로젝트 보기](/projects/){: .project-nav-link } · [CV 보기](/cv/){: .project-nav-link }

</div>
<div class="lang-block" data-lang="en" lang="en" markdown="1">

## Overview

Capstone design project that developed a robot supporting autonomous golf rounds without a human caddy (official entry title: "Contactless Caddy Service Robot"). Led a four-member team from ROS-based system design through building the real-vehicle prototype; the work won the **Excellence Award (University President's Award) at the 17th Kwangwoon ICT Exhibition (KWIX)**.

> 🎬 **Demo videos**: [Final Demo](https://youtu.be/uAqilEhrqzE) · [Obstacle Avoidance](https://youtu.be/JxvJmeS787U) · [ODE Simulation](https://youtu.be/_OWhjs1FOTs)

## Problem

Carrying a golf bag without a human caddy requires the robot to follow the user in an outdoor environment without losing them, while simultaneously avoiding the static and dynamic obstacles encountered along the way. User-following and obstacle avoidance can pull the heading in conflicting directions, so combining the two behaviors into a single driving algorithm was the core challenge. Outdoor driving also demands consistent alignment of the GPS and IMU coordinate frames, which use different references, for stable driving.

## Role

As team leader, oversaw the design and implementation of the ROS-based system. Directly responsible for the autonomous-driving/following algorithms, the GPS/IMU/2D LiDAR perception pipeline, and the design and integration of the power/control circuits.

![Real-vehicle caddy robot prototype — photo of the robot carrying a golf bag with a hardware spec table (15kg, 30cm wheel diameter, 50×86×105cm)](/assets/img/projects/smart-caddy-hardware.jpg)
_Real-vehicle prototype hardware — 50×86×105cm (W×H×L), 15kg, 30cm wheel diameter_

## Key Contributions

- Generated target points from the user's remote-control GPS position and implemented simultaneous user-following and dynamic/static obstacle avoidance with a Potential Field driving algorithm combining an attractive force toward the user and a repulsive force from obstacles
- Built an integrated GPS/IMU/2D LiDAR perception pipeline; secured driving stability with IMU-based heading estimation and north-referenced coordinate normalization
- Validated the algorithm in an ODE (Open Dynamics Engine) simulation environment before applying it to real-vehicle driving
- Designed and integrated the power/control circuits, completing a robot platform capable of outdoor driving

![System architecture block diagram — main PC connected to a CORTEX-M4 sub-controller over serial, with the user remote control (ESP-32, GPS) communicating over Bluetooth](/assets/img/projects/smart-caddy-system-architecture.jpg)
_System architecture — the main PC (ROS) and the CORTEX-M4 sub-controller are connected over serial, and the user remote control (ESP-32, GPS) sends the target position over Bluetooth_

![Control system block diagram — from Potential Field through Mobile Kinematics to velocity and current PI controllers](/assets/img/projects/smart-caddy-control-system.jpg)
_Control structure — velocity commands from the Potential Field are converted to per-wheel angular velocities via Mobile Kinematics, and the motors are driven by velocity and current PI controllers_

![ROS node diagram — the Caddy serial node receives GPS/Bluetooth input, and the Caddy navigation node generates velocity commands from IMU/LiDAR input](/assets/img/projects/smart-caddy-ros-nodes.jpg)
_ROS node layout — the Caddy serial node receives GPS/Bluetooth input and communicates with the MCU, while the Caddy navigation node generates velocity commands from IMU/LiDAR input_

## Results

Validated static/dynamic obstacle avoidance in ODE simulation first, then built a 50×86×105cm, 15kg real-vehicle prototype and demonstrated GPS user-following and obstacle-avoidance driving in an outdoor environment (three demo videos).

![ODE simulation screen showing the robot (yellow) driving to the target point (red) while avoiding static obstacles (gray) and dynamic obstacles (green)](/assets/img/projects/smart-caddy-ode-sim.jpg)
_ODE-based Potential Field simulation — driving path reaching the target point while avoiding static and dynamic obstacles_

## Awards

<div class="project-certs">
  <figure><img src="/assets/img/awards/kwix2021-best-award.jpg" alt="Certificate of the Excellence Award, 17th Kwangwoon ICT Exhibition (KWIX)"><figcaption>Excellence Award (University President's Award), 17th Kwangwoon ICT Exhibition (KWIX) — entry title "Contactless Caddy Service Robot"</figcaption></figure>
</div>

---

[← All Projects](/projects/){: .project-nav-link } · [View CV](/cv/){: .project-nav-link }

</div>

</div>
