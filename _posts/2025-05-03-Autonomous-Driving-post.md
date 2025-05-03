---
title: ROS 기반 자율주행 시스템 구조
date: 2025-05-03 11:30:00 +0900
categories: [자율주행, ROS]
tags: [자율주행, ros, 시스템구조, 실차적용]
---

# ROS 기반 자율주행 시스템 구조

자율주행 시스템은 ROS(Robot Operating System)를 기반으로 센서 데이터부터 주행 제어까지 전체 파이프라인을 효율적으로 관리합니다. 특히 실제 차량에 적용할 때는 **명령 변환 계층(Command Translation)**이 핵심 요소입니다.

![ROS 자율주행 시스템 구조](/assets/img/posts/Autonomous_System_Architecture.png)

## 시스템 구성 개요

자율주행 시스템은 크게 세 가지 계층으로 나뉩니다:

1. **인지 계층(Perception)**: 센서로 환경을 인식
2. **계획 계층(Planning)**: 경로 및 행동 계획 수립
3. **제어 계층(Control)**: 실제 차량 명령으로 변환 및 제어

## 🧠 1. Perception (인지 계층)

환경을 인식하고 주행에 필요한 기본 정보를 생성합니다.

### 주요 구성요소
- **센서 노드**: LiDAR(`/scan`), 카메라(`/image_raw`), IMU(`/imu/data`)
- **필터링**: 센서 융합, 노이즈 제거 (`/sensor_fusion_pose`)
- **인식**: 차선 인식(`/lane_markings`), 장애물 감지(`/obstacle_detected`)
- **지도 생성**: 주행 가능 영역 정의 (`/map`)

## 📍 2. Planning (계획 계층)

인식된 정보를 바탕으로 자율주행 판단을 수행합니다.

### 위치 추정 (Localization)
- **핵심 노드**: `robot_localization`, `amcl`
- **입출력**: GPS, IMU 데이터 → 정밀 위치 정보(`/tf`)

### 경로 계획
- **전역 경로**: 목적지까지의 대략적 경로 (`/global_path`)
- **행동 결정**: 상황별 주행 전략 결정 (`/behavior_state`)
- **지역 경로**: 장애물 회피 등 실시간 경로 조정 (`/trajectory_cmd`)

## ⚙️ 3. Control (제어 계층)

### Command Translation (실차 적용의 핵심)

추상적인 ROS 명령을 실제 차량이 이해할 수 있는 저수준 명령으로 변환합니다.

| ROS 명령 | 변환 후 차량 명령 | 인터페이스 |
|--------|-----------------|-----------|
| `/cmd_vel` | 조향, 가속, 제동 | `/steer_cmd`, `/throttle_cmd` |
| `/trajectory_cmd` | 경로점별 속도/조향 | CAN/Serial 통신 |

### 주요 제어 노드
- `cmd_vel_to_ackermann`: 속도/각속도 → Ackermann 조향 변환
- `vehicle_interface`: CAN/PWM 기반 차량 제어

## 🔄 피드백 루프

제어 결과는 센서를 통해 다시 인지 계층으로 피드백되어 **폐루프 제어**를 구현합니다:
1. 명령 실행 → 2. 센서로 결과 측정 → 3. 위치 및 상태 갱신 → 4. 새 명령 생성

## 📊 시스템 요약

| 계층 | 주요 기능 | 핵심 노드 | 출력 |
|-----|--------|---------|------|
| Perception | 환경 인식 | `velodyne_driver`, `usb_cam` | 장애물, 차선, 지도 |
| Planning | 경로 생성 | `global_planner`, `local_planner` | 이동 경로, 속도 프로필 |
| Control | 차량 제어 | `vehicle_interface` | 조향, 가속, 제동 명령 |

## 💡 실차 적용 시 주요 고려사항

- **하드웨어 통신**: `socketcan_bridge`(CAN), `rosserial`(MCU) 활용
- **실시간성**: 지연 시간 최소화, 제어 주기 일정하게 유지
- **안전 장치**: 비상 정지, 오류 감지, 장애 복구 메커니즘 필수
- **시뮬레이터와 차이점**: 실차에서는 하드웨어 변환 노드 필수

## 결론

ROS 기반 자율주행 시스템은 모듈화된 구조로 개발과 테스트를 용이하게 합니다. 특히 **하드웨어 연결 계층**을 명확히 설계하고 구현하는 것이 실차 적용의 핵심입니다. 이 구조를 바탕으로 점진적인 구현과 테스트를 진행하면 안정적인 자율주행 시스템을 구축할 수 있습니다.

