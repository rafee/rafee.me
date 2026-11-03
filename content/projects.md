---
title: "Projects & Highlights"
date: 2026-11-03T09:00:00-06:00
draft: false
---

Here is a curated overview of my projects, security investigations, research, and technical experiments across cloud defense, digital forensics, automation, and robotics.

---

### Cloud Security & Automation

#### **Enterprise Multi-Cloud Security Auditing & Guardrails**
- **Focus**: AWS & Oracle Cloud Infrastructure (OCI)
- **Tech Stack**: Python, Go, Bash, AWS SDK (Boto3), OCI SDK, Terraform
- **Description**: Developed custom audit and verification scripts to enforce Cloud Security Posture Management (CSPM) and least-privilege Identity and Access Management (IAM) across hybrid enterprise cloud tenants. Automated the extraction and parsing of security configuration baselines, generating actionable reporting for engineering teams.

#### **Infrastructure as Code (IaC) with Terraform**
- **Focus**: Reproducible Cloud Environments & Disaster Recovery
- **Tech Stack**: Terraform, OCI, AWS, GitOps
- **Description**: Designed modular Terraform configurations to replace error-prone manual console deployments. Ensured disaster recovery environments and cloud workloads can be reliably recreated from declarative, version-controlled definitions with integrated security baselines.

---

### Digital Forensics & Incident Response (DFIR)

#### **Memory Forensics & Malware Analysis (Hack The Box Sherlocks)**
- **Focus**: Threat Hunting & Artifact Extraction
- **Tech Stack**: Volatility 2, Volatility 3, YARA, Wireshark, Linux/CLI tools
- **Highlights**:
  - **Sherlock - Meerkat**: Deep investigation into network attack vectors, Suricata/Snort alert interpretation, and exploit payload tracing.
  - **Sherlock - Recollection & RogueOne**: Full memory dump analysis, locating injected DLLs, anomalous process hierarchies, dumped credentials, and command-and-control (C2) persistence mechanisms.

#### **Threat Intelligence & Telemetry Analysis**
- **Focus**: Zero-Day Vulnerability Research & Defense Hygiene
- **Highlights**: Published technical analyses on sophisticated zero-day, zero-click exploit chains (such as the 2023–2024 Apple iMessage hardware/software vulnerability chain documented by Kaspersky). Emphasized the defensive value of deep SIEM flow-log inspection over superficial perimeter protection.

---

### Academic & Applied Robotics Research

#### **Autonomous Mobile Robot Localization via Monocular Vision**
- **Published**: IEEE Conference Proceedings
- **Tech Stack**: Computer Vision, C++, OpenCV, Projective Geometry, MATLAB
- **Summary**: Implemented a real-time self-localization framework for autonomous mobile robots using monocular camera input tracking planar chessboard pattern markers. Derived exact position and orientation transforms using geometric perspective-n-point algorithms.

#### **Microcontroller-Based Digital Power Factor Correction Converter**
- **Published**: IEEE Conference Proceedings
- **Tech Stack**: Microcontroller Firmware, Power Electronics, MATLAB/Simulink
- **Summary**: Modeled and simulated a closed-loop digital control converter to optimize electrical efficiency and power quality, minimizing harmonic distortion in power distribution systems.

---

### Open Source, Utilities & Problem Solving

#### **Automated Activity & Health Loggers (`StepCounter`, `put_steps`)**
- **GitHub**: [github.com/rafee](https://github.com/rafee)
- **Tech Stack**: Python, APIs, Cloud Storage
- **Summary**: Lightweight CLI utilities designed to automate personal fitness tracking data ingestion, synchronization with cloud storage, and automated log visualization.

#### **Algorithmic Problem Solving (LeetCode)**
- **Focus**: Data Structures & Algorithms
- **Highlights**: Solved over 300 problems across graph theory, dynamic programming, tree traversals, and system design using **Go**, **Python**, **Java**, and **C++**.

#### **Personal Website & Tech Blog (`rafee.me`)**
- **Tech Stack**: Hugo, Go Templates, Markdown, Cloudflare Pages
- **Summary**: Fast, static, and minimalist personal knowledge base and technical blog deployed with continuous integration on Cloudflare.
