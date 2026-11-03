---
title: "Is Your iPhone Spying on You?"
description: Zero day, zero click exploit on Apple devices
date: 2024-01-02
tags: ['Apple', 'Russia', 'Kaspersky', '0-day', '0-click']
draft: false
---

On December 27, 2023, Kaspersky, a cybersecurity firm, released a detailed
article exposing the intricacies of a significant security threat. This exploit,
incorporating four zero-day vulnerabilities, allowed attackers to gain complete
access to a targeted device and retrieve user data. Notably, the attack was
zero-click, requiring no user interaction, making any device capable of
receiving an iMessage susceptible. I won’t go into the technical details of how
this exploit actually work as [this link](https://thehackernews.com/2023/12/most-sophisticated-iphone-hack-ever.html)
explains it quite well. Just for the sake of understanding how complicated the
exploit is, I am going to include the attack chain published in aforementioned
article.

![Attack chain for full device access iPhone](/images/apple-spywre.webp)

The exploit, applicable to all Apple hardware, was dubbed by Thehackernews as
the most sophisticated iPhone hack to date. Unlike typical software
vulnerabilities, this exploit exploited both software and a rarely known
hardware component, suggesting a high level of sophistication. Kaspersky
discovered the exploit within its network but indicated that they were not the
sole target. The prevalence of this exploit in devices owned by Russian
intelligence agency employees points towards the involvement of an Advanced
Persistent Threat (APT).

Despite speculations claiming Apple collaboration with the NSA by Russian
authorities, the focus shifts to addressing the immediate concerns. Updating
software is paramount, particularly for those using iOS 15.7 and below. At the
time of discovery, iOS 16.5 was the latest version, emphasizing the importance
of keeping software up to date. Although this still leaves a two-year window of
vulnerability, timely updates remain a crucial defense.

The hardware security aspect highlights the flaw in relying on obscurity. While
the software community has largely abandoned the concept of 'Security through
Obscurity,' the hardware domain appears to be lagging behind. It is a timely
reminder for hardware designers to reconsider their approach, as concealed
vulnerabilities eventually come to light.

The detection of the attack through network logs in a Security Information and
Event Management (SIEM) platform underscores the importance of foundational
cybersecurity practices. Amidst the hype surrounding advanced technologies, the
significance of monitoring network flow logs is often overlooked. Basic security
measures, such as maintaining comprehensive logs, prove to be instrumental in
identifying and responding to threats.

While some may dismiss this as an APT-level threat that does not concern the
average user, the fundamental truth is often overlooked. An APT exploit today
could become a tool for less sophisticated attackers tomorrow. Given the
exploit's ability to operate without user input, the potential for future
ransomware or spyware attacks looms large. While complete prevention of all
attacks may be unattainable, adhering to proper cybersecurity hygiene
significantly reduces the likelihood of falling victim to such threats.