---
title: "Is Your iPhone Spying on You?"
description: Zero day, zero click exploit on Apple devices
date: 2024-01-02
tags: ['Apple', 'Russia', 'Kaspersky', '0-day', '0-click']
draft: false
---
On December 27, 2023, cybersecurity firm Kaspersky published an article that
detailed, how 4 zero-day vulnerabilities were chained together to form an
exploit that allows an attacker to gain complete access to target device and
access user data. Not only the attack uses zero-day vulnerabilities, it’s also
zero-click, meaning it requires no input from user. As long as the target can
receive an iMessage, the exploit can be used. I won’t go into the
technical details of how this exploit actually work as this link ([Most
Sophisticated iPhone Hack Ever Exploited Apple's Hidden Hardware Feature
(thehackernews.com)](https://thehackernews.com/2023/12/most-sophisticated-iphone-hack-ever.html))
explains it quite well. Just for the sake of understanding how complicated the
exploit is, I am going to include the attack chain published in aforementioned article.

![Attack chain for full device access iPhone](/images/apple-spywre.webp)

Thehackernews dubbed this as the most sophisticated iPhone hack ever exploited
(Even though this exploit works on all Apple hardware). This exploit not only
relied on software vulnerability, but also vulnerability on a hardware
component, that very few people outside Apple and maybe ARM knew even exists.
Kaspersky has concluded that, while they had discovered this inside their
network, they were not the only target. Rather, given the preponderance of this
exploit in devices owned by Russian intelligence agency employees, it points
this to be the work of an APT. While Russia has claimed Apple collaborated with
NSA to hack iPhones, that’s purely speculation and philosophical discussion at
this point. But what is not up for discussion is what we should do about this.

The first thing that needs to be looked at is the importance of updating the
software. This impacts iOS 15.7 and below. When this was first published the iOS
version was 16.5. That means, if someone had their software up to date, this
exploit wouldn’t work at the time of discovery. While that still leaves us with
almost 2 years of open gates, it’s still better than endless exploitation.

Secondly, the hardware security relied on ignorance of the attacker. While the
software world has pretty much now all agreed that ‘Security through Obscurity’
doesn’t work, unfortunately same can’t be said about hardware teams. I think
it’s a good time for the hardware designers to realize this as well. Because at
some point everything comes out in the open.

Finally, the attack was discovered via the network logs in SIEM platform. This
points to the importance of doing the basics right. We often hear so much about
this new sophisticated technology that’ll make xyz completely obsolete. Yet, we
realize that at the end of the day, there’s so much insight to be derived just
from network flow logs, something that very often is either ignored, or partially
monitored.

Common people can look at this and say, this is an APT level threat,
and there’s nothing we can do about it. Also, we are the small guy. No one is
going to use such a sophisticated attack against us! Yet we ignore the most
fundamental paradigm. An APT exploit today is the script kiddy tool tomorrow.
Because this requires no input from user, there’s every possibility without
proper updates, your device can be the victim of next ransomware/spyware through
this. All in all, while you can never stop all attacks, proper hygiene will
almost surely reduce its likelihood.