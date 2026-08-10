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

<p class="project-lead">GPS 사용자 추종과 2D LiDAR 장애물 회피를 하나의 Potential Field 주행기로 결합한 15kg 실차 로봇. 4인 팀의 설계·제작을 이끌었으며 제17회 광운 ICT 작품 전시회(KWIX) 최우수상(총장상) 수상.</p>

<div class="project-facts">
  <div class="project-fact"><span>역할</span><strong>4인 팀 리더 · 시스템 통합</strong></div>
  <div class="project-fact"><span>주행</span><strong>GPS 추종 · LiDAR 회피</strong></div>
  <div class="project-fact"><span>검증</span><strong>ODE 시뮬레이션 · 실차</strong></div>
</div>

<details class="project-deep-dive"><summary>구현 내용과 실험 보기</summary><div markdown="1">

> 🎬 **시연 영상**: [Final Demo](https://youtu.be/uAqilEhrqzE) · [장애물 회피](https://youtu.be/JxvJmeS787U) · [ODE 시뮬레이션](https://youtu.be/_OWhjs1FOTs) · 코드: [caddy_robot](https://github.com/donghyeon99/caddy_robot)

## 문제

사람 캐디 없이 골프백을 옮기려면 실외에서 사용자를 놓치지 않는 추종 주행이 전제. 여기에 이동 중 마주치는 정적·동적 장애물 회피까지 동시에 필요.

문제는 추종과 회피가 진행 방향을 서로 다른 쪽으로 끌 수 있다는 점. 따라서 두 동작을 하나의 주행 알고리즘으로 묶고, 기준이 다른 GPS·IMU 좌표계를 일관되게 정렬할 필요가 있었음.

## 역할

팀 리더로 ROS 기반 시스템의 설계와 구현을 총괄. 자율주행·추종 알고리즘, GPS·IMU·2D LiDAR 인지 파이프라인, 전원·제어 회로의 설계·통합을 직접 담당. 주요 부품은 RPLIDAR-A2 2D LiDAR, MW-AHRSv1 6DoF IMU, AKBU6 GPS, 로봇 제어용 STM32와 리모컨용 ESP32 MCU.

![캐디 로봇 실차 프로토타입 — 골프백을 실은 로봇 사진과 하드웨어 스펙 표(무게 15kg, 바퀴 지름 30cm, 50×86×105cm)](/assets/img/projects/smart-caddy-hardware.jpg)
_실차 프로토타입 하드웨어 — 50×86×105cm(W×H×L), 15kg, 바퀴 지름 30cm_

![센서 배치가 표시된 로봇 사진, 직접 그린 제어 회로도, 프레임 CAD 모델](/assets/img/projects/smart-caddy-circuit-cad.jpg)
_센서 배치(IMU·DC모터·GPS·LiDAR), 직접 설계한 제어 회로도, 프레임 CAD 모델_

## 시스템 구성

- 사용자 리모컨의 GPS 위치로 목표점을 생성하고, 사용자 방향 인력(attractive force)과 장애물 척력(repulsive force)을 결합한 Potential Field 주행 알고리즘으로 사용자 추종과 동적·정적 장애물 회피를 동시에 구현
- GPS·IMU·2D LiDAR를 하나로 묶은 인지 파이프라인 설계
- IMU로 heading을 추정하고 GPS 좌표계를 북쪽 기준으로 정규화
- ODE(Open Dynamics Engine) 시뮬레이션 환경에서 알고리즘을 선행 검증한 뒤 실차 주행에 적용
- 전원·제어 회로를 직접 설계·통합해 실외 주행이 가능한 로봇 플랫폼 완성

![메인 PC와 CORTEX-M4 서브 컨트롤러가 시리얼로 연결되고 사용자 리모컨(ESP-32·GPS)이 블루투스로 통신하는 시스템 아키텍처 블록 다이어그램](/assets/img/projects/smart-caddy-system-architecture.jpg)
_시스템 아키텍처 — 메인 PC(ROS)와 CORTEX-M4 서브 컨트롤러를 시리얼로 연결하고, 사용자 리모컨(ESP-32·GPS)이 블루투스로 목표 위치 전달_

![Potential Field에서 Mobile Kinematics, 속도·전류 PI 제어기로 이어지는 제어 시스템 블록 다이어그램](/assets/img/projects/smart-caddy-control-system.jpg)
_제어 구조 — Potential Field가 출력한 속도 명령을 Mobile Kinematics로 바퀴별 각속도로 변환하고, 속도·전류 PI 제어기로 모터 구동_

![GPS·블루투스 입력을 받는 Caddy serial 노드와 IMU·LiDAR 입력으로 속도 명령을 생성하는 Caddy navigation 노드의 ROS 노드 구성도](/assets/img/projects/smart-caddy-ros-nodes.jpg)
_ROS 노드 구성 — Caddy serial 노드가 GPS·블루투스 입력을 받아 MCU와 통신하고, Caddy navigation 노드가 IMU·LiDAR 입력으로 속도 명령 생성_

## GPS 기반 사용자 추종

GPS 센서 선정은 필드에서. 직접 수신해 본 결과 주택가에서는 값이 계속 흔들리는 반면, 트인 하천변에서는 일정 값으로 수렴. 골프장은 트인 환경이고 짐을 싣고 따라오는 용도라 cm급 정밀도까지는 불필요하다는 판단에 따라, RTK 없이 일반 GPS 모듈로 확정. 수신값은 NMEA에서 위도·경도를 뽑아 UTM 좌표로 변환한 뒤 이동평균 필터로 노이즈 저감.

![하천변 GPS 필드 테스트 — mapviz 위성지도 위 사용자·로봇 GPS 궤적](/assets/img/projects/smart-caddy-gps-field-test.jpg)
_하천변 GPS 필드 테스트: mapviz 위성지도에 사용자(초록)와 로봇(빨강)의 GPS 궤적을 겹쳐 확인_

## Potential Field와 Min-Depth Filter

사용자 방향 인력과 장애물 척력을 결합해 추종과 회피가 동시에 속도 명령에 반영되는 Potential Field 구성. Repulsive force 계산에는 Min-Depth Filter라는 아이디어를 고안. 장애물을 하나하나 구분해 척력을 만들면 연산량이 커지는 것이 문제. 커널로 방향별 최소 거리만 뽑으면 장애물 구분 없이도 척력 산출이 가능한 구조. 연산량은 낮추고 회피 동작은 그대로 유지.

## ODE 시뮬레이션

시뮬레이션의 걸림돌은 ODE의 LiDAR가 지나치게 이상적이라는 점. Random·Gaussian 노이즈를 얹고, 측정 실패 시 max값이 반환되는 failure 상황까지 재현해 실제 센서에 가까운 조건을 구성. 그 뒤에 알고리즘 검증.

## 제어기 구성

제어 주기는 전류 500Hz, 속도 50Hz, 내비게이션 5Hz로 배치. 각 상위 계층의 명령 주기를 바로 아래 제어기의 10분의 1로 두어, 하위 제어기가 명령을 충분히 처리하도록 구성.

## 실차 시연

ODE 시뮬레이션으로 정적·동적 장애물 회피를 선행 검증. 이후 50×86×105cm, 15kg 실차 프로토타입을 제작해 실외 환경에서 GPS 사용자 추종과 장애물 회피 주행 시연(영상 3편).

![ODE 시뮬레이션에서 로봇(노란색)이 정적 장애물(회색)과 동적 장애물(초록색)을 회피하며 목표점(빨간색)까지 주행한 경로 화면](/assets/img/projects/smart-caddy-ode-sim.jpg)
_ODE 기반 Potential Field 시뮬레이션 — 정적·동적 장애물을 회피하며 목표점에 도달하는 주행 경로_

## 수상

<div class="project-certs">
  <figure><img src="/assets/img/awards/kwix2021-best-award.jpg" alt="제17회 광운 ICT 작품 전시회(KWIX) 최우수상 상장"><figcaption>제17회 광운 ICT 작품 전시회(KWIX) 최우수상 (총장상) — 작품명 "비대면 캐디 서비스 로봇"</figcaption></figure>
</div>

</div></details>

---

[← 모든 프로젝트 보기](/projects/){: .project-nav-link } · [CV 보기](/cv/){: .project-nav-link }

</div>
<div class="lang-block" data-lang="en" lang="en" markdown="1">

<p class="project-lead">A 15 kg real-vehicle robot that combines GPS user-following and 2D LiDAR obstacle avoidance in one Potential Field controller. I led the four-person team through design and fabrication; the project won the Excellence Award (University President's Award) at the 17th Kwangwoon ICT Exhibition (KWIX).</p>

<div class="project-facts">
  <div class="project-fact"><span>Role</span><strong>Four-person team lead · Integration</strong></div>
  <div class="project-fact"><span>Navigation</span><strong>GPS following · LiDAR avoidance</strong></div>
  <div class="project-fact"><span>Validation</span><strong>ODE simulation · Real vehicle</strong></div>
</div>

<details class="project-deep-dive"><summary>Implementation and experiments</summary><div markdown="1">

> 🎬 **Demo videos**: [Final Demo](https://youtu.be/uAqilEhrqzE) · [Obstacle Avoidance](https://youtu.be/JxvJmeS787U) · [ODE Simulation](https://youtu.be/_OWhjs1FOTs) · Code: [caddy_robot](https://github.com/donghyeon99/caddy_robot)

## Problem

Carrying a golf bag without a human caddy means the robot has to follow the user outdoors without losing them, and it must clear the static and dynamic obstacles along the way.

The catch is that user-following and obstacle avoidance can pull the heading in conflicting directions. Combining the two behaviors into a single driving algorithm was the core challenge. Outdoor driving also demands consistent alignment of the GPS and IMU coordinate frames, which use different references.

## Role

As team leader, I oversaw the design and implementation of the ROS-based system. I was directly responsible for the autonomous-driving and following algorithms, the GPS/IMU/2D LiDAR perception pipeline, and the design and integration of the power and control circuits. Main components: an RPLIDAR-A2 2D LiDAR, an MW-AHRSv1 6DoF IMU, an AKBU6 GPS, an STM32 MCU for robot control, and an ESP32 MCU for the remote.

![Real-vehicle caddy robot prototype — photo of the robot carrying a golf bag with a hardware spec table (15kg, 30cm wheel diameter, 50×86×105cm)](/assets/img/projects/smart-caddy-hardware.jpg)
_Real-vehicle prototype hardware — 50×86×105cm (W×H×L), 15kg, 30cm wheel diameter_

![Robot photo with sensor placement annotations, the control circuit schematic, and the frame CAD model](/assets/img/projects/smart-caddy-circuit-cad.jpg)
_Sensor placement (IMU, DC motors, GPS, LiDAR), the control circuit schematic I designed, and the frame CAD model_

## System Architecture

- Generated target points from the user's remote-control GPS position and implemented simultaneous user-following and dynamic/static obstacle avoidance with a Potential Field driving algorithm combining an attractive force toward the user and a repulsive force from obstacles
- Built an integrated GPS/IMU/2D LiDAR perception pipeline
- Estimated heading from the IMU and normalized the GPS frame to a north-referenced coordinate system
- Validated the algorithm in an ODE (Open Dynamics Engine) simulation environment before applying it to real-vehicle driving
- Designed and integrated the power/control circuits to complete a robot platform capable of outdoor driving

![System architecture block diagram — main PC connected to a CORTEX-M4 sub-controller over serial, with the user remote control (ESP-32, GPS) communicating over Bluetooth](/assets/img/projects/smart-caddy-system-architecture.jpg)
_System architecture — the main PC (ROS) and the CORTEX-M4 sub-controller are connected over serial, and the user remote control (ESP-32, GPS) sends the target position over Bluetooth_

![Control system block diagram — from Potential Field through Mobile Kinematics to velocity and current PI controllers](/assets/img/projects/smart-caddy-control-system.jpg)
_Control structure — velocity commands from the Potential Field are converted to per-wheel angular velocities via Mobile Kinematics, and the motors are driven by velocity and current PI controllers_

![ROS node diagram — the Caddy serial node receives GPS/Bluetooth input, and the Caddy navigation node generates velocity commands from IMU/LiDAR input](/assets/img/projects/smart-caddy-ros-nodes.jpg)
_ROS node layout — the Caddy serial node receives GPS/Bluetooth input and communicates with the MCU, while the Caddy navigation node generates velocity commands from IMU/LiDAR input_

## GPS User Following

We chose the GPS sensor in the field. Live readings kept wobbling in a residential area but converged to steady values along an open stream-side path. A golf course is open terrain, and a bag-carrying follower doesn't need cm-level precision, so we settled on a plain GPS module without RTK. Latitude and longitude are parsed from NMEA, converted to UTM coordinates, and smoothed with a moving-average filter.

![Stream-side GPS field test — user and robot GPS tracks on satellite imagery in mapviz](/assets/img/projects/smart-caddy-gps-field-test.jpg)
_Stream-side GPS field test: user (green) and robot (red) GPS tracks overlaid on satellite imagery in mapviz_

## Potential Field & Min-Depth Filter

The Potential Field combines attraction toward the user with repulsion from obstacles, so following and avoidance affect the same velocity command. For the repulsive force I came up with an idea we called the Min-Depth Filter. Computing forces per obstacle gets expensive. A kernel that keeps only the minimum range per direction produces the repulsive force without segmenting obstacles at all. Computation dropped while the avoidance behavior stayed the same.

## ODE Simulation

In simulation, the problem was that ODE's LiDAR is too well-behaved. I added random and Gaussian noise to its ideal ranges, plus failure cases where the sensor returns its max value, and only then validated the algorithm under conditions close to the real sensor.

## Controller Rates

Control rates step down in tiers: current controller at 500 Hz, velocity controller at 50 Hz, navigation at 5 Hz. Each layer sends commands at a tenth of the rate below it, so every controller can fully absorb what it receives.

## Real-Vehicle Demonstration

We validated static and dynamic obstacle avoidance in ODE simulation first. We then built a 50×86×105 cm, 15 kg real-vehicle prototype and demonstrated GPS user-following and obstacle-avoidance driving outdoors (three demo videos).

![ODE simulation screen showing the robot (yellow) driving to the target point (red) while avoiding static obstacles (gray) and dynamic obstacles (green)](/assets/img/projects/smart-caddy-ode-sim.jpg)
_ODE-based Potential Field simulation — driving path reaching the target point while avoiding static and dynamic obstacles_

## Awards

<div class="project-certs">
  <figure><img src="/assets/img/awards/kwix2021-best-award.jpg" alt="Certificate of the Excellence Award, 17th Kwangwoon ICT Exhibition (KWIX)"><figcaption>Excellence Award (University President's Award), 17th Kwangwoon ICT Exhibition (KWIX) — entry title "Contactless Caddy Service Robot"</figcaption></figure>
</div>

</div></details>

---

[← All Projects](/projects/){: .project-nav-link } · [View CV](/cv/){: .project-nav-link }

</div>

</div>
