---
title: "🛒 Smart Caddy Robot (Capstone Design)"
layout: page
date: 2021-06-30
stack: ["STM32", "ESP32", "Lidar", "GPS", "IMU", "ROS1", "ODE Simulator"]
tags: ["Autonomous Robot", "Obstacle Avoidance", "Mapless Navigation"]
# thumbnail: /assets/projects/caddy_thumb.png
---

> 💡 **Period:** Mar. 2021 – Jun. 2021  
> 👥 **Team Size:** 4  
> 🧑‍💻 **My Role:** GPS-based tracking algorithm, Lidar filtering, team lead

---

## 🧠 Overview

Developed a **non-contact caddy service robot** for golf courses to support self-rounding without a human caddy.  
The robot autonomously follows a golfer using GPS/IMU/Lidar, performs obstacle avoidance using a **Min-Depth Filter + Potential Field**,  
and allows remote control via **Bluetooth**.

---

## 🛠️ System Architecture

![System Architecture](/assets/projects/caddy_architecture.png)

- **PC (Main Controller):** UTM-based GPS tracking + Obstacle avoidance logic  
- **STM32:** Velocity to PWM motor control via dual-loop PID  
- **ESP32:** Bluetooth GPS transmitter (remote)

---

## ⚙️ Hardware Design

![Hardware Platform](/assets/projects/caddy_robot_HW.png)

- **2WD differential drive** with gear-pulley reduction  
- **Custom PCB** for motor driver + communication interface  
- Frame built for **30kg payload** (robot + golf bag)

---

## 🧪 Simulation Result

![ODE-based Simulation](/assets/projects/caddy_ODE_sim_result.png)

- Lidar simulation with **Gaussian/random noise**  
- Tracking success rate: **95%**  
- Obstacle avoidance success rate: **90%**  
- Simulated sensor dropout and recovery scenario

---

## 📺 Demo

[![Watch Demo](https://img.shields.io/badge/YouTube-Video-red?logo=youtube&style=flat-square)](https://youtu.be/uAqilEhrqzE)

---

## 🏷️ Keywords

`GPS Tracking`, `UTM Conversion`, `Potential Field`, `Min-Depth Filter`,  
`Obstacle Avoidance`, `STM32`, `ESP32`, `Bluetooth`, `Autonomous Robot`, `ODE Simulation`
