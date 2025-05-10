---
layout: page
title: Projects
permalink: /projects/
---

## 🚀 Selected Projects

### 1. Neural Network Formation Control of UAVs
- **Period:** Sep 2023 – Dec 2023  
- **Stack:** Python, ROS, Gazebo  
- **Description:** Finite-memory learning with neural networks for UAV formation control under disturbances.
- [📺 Demo Video](https://www.youtube.com/watch?v=K2Jqm8zCsDo)

---

### 2. Distributed Localization of Humanoid Robots
- **Based on Master’s Thesis**  
- **Description:** Fusion of neural networks and finite-memory estimation for multiple humanoid agents.  
- [📺 Demo Video](https://www.youtube.com/watch?v=ueaxI5FNc_w)

---

### 🛒 Smart Caddy Robot (Capstone Design)

- **Period:** Mar. 2021 – Jun. 2021  
- **Team Size:** 4  
- **My Role:** GPS-based tracking algorithm, Lidar filtering, team lead  
- **Stack:** STM32, ESP32, Lidar (RPLidar A2), GPS (AKBU6), IMU (MW-AHRSv1), ROS1, ODE Simulator  

#### 🧠 Overview  
Developed a non-contact caddy service robot for golf courses to support self-rounding without a human caddy. The robot autonomously follows a golfer, avoids obstacles, and allows manual control via a Bluetooth-based remote.

#### 🛠️ System Architecture  
![System Architecture](/assets/projects/caddy_architecture.png)

- Main controller (PC): UTM-based tracking and avoidance
- STM32 sub-controller: motor PWM & velocity loop
- ESP32-based Bluetooth remote with GPS feedback

#### ⚙️ Hardware Design  
![Hardware Platform](/assets/projects/caddy_robot_HW.png)

- 2WD differential drive with gear-pulley
- Load-tested for 30kg payload (robot + bag)
- STM32 + ESP32 communication interface
- Custom motor driver & remote controller PCB

#### 🧪 Simulation Result  
![ODE-based Simulation](/assets/projects/caddy_ODE_sim_result.png)

- Lidar + obstacle generation with Gaussian noise
- Tracking success rate: 95% / Obstacle avoidance: 90%
- Simulated sensor failure and recovery

#### 📺 Demo  
[![Watch Demo](https://img.shields.io/badge/YouTube-Video-red?logo=youtube&style=flat-square)](https://youtu.be/uAqilEhrqzE)

#### 🏷️ Keywords   
GPS Tracking, UTM Conversion, Potential Field, Min-Depth Filter, Obstacle Avoidance, STM32, ESP32, Bluetooth Control, Autonomous Robot, ODE Simulation
