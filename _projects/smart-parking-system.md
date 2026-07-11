---
title: "스마트 주차 시스템 (영상처리·조명제어 서버)"
description: "약 30대 CCTV 동시 처리와 YOLOv7 기반 객체 탐지로 구현한 스마트 주차 영상처리·조명제어 시스템 (납품 완료)."
date: 2025-05-31
period: "2024.05 ~ 2025.05"
category_label: Industry
tech: [C++, Go, Redis, gRPC, OpenCV, YOLOv7, RTSP]
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

LUXROBO에서 스마트 주차 시스템의 영상 처리 서버와 조명 제어 서버 개발을 담당했다. 단일 서버에서 약 30대의 CCTV 카메라를 동시에 제어·분석(RTSP 스트림 처리)하며, 프로젝트는 2025년 5월 납품 완료됐다.

## 핵심 기여

- 단일 서버에서 약 30대 CCTV 카메라 동시 제어 및 분석(RTSP 스트림 처리)
- 어안(Fisheye)/단방향(One-way) 카메라 파이프라인을 분리해 확장성 확보
- Optical Flow 및 YOLOv7(ONNX) 기반 객체(차량/보행자) 탐지 및 속도 분석 (CUDA 가속)
- Redis 기반 이벤트 처리 구조 설계
- RSSI 신호 비교 기반 근접 카메라 자동 식별 로직 구현
- gRPC 통신 기반 실시간 조명 장치 동적 제어 (CCTV·BLE·비상벨 이벤트 통합 처리)

## 결과 / 수치

약 30대 규모의 CCTV를 단일 서버에서 동시 처리하는 구조로 설계·구현했으며, 2025년 5월 납품을 완료했다.

## 기술 스택

C++ · Go · Redis · gRPC · OpenCV · YOLOv7 · RTSP
