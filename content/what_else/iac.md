---
title: "IaC"
date: 2022-03-17T22:50:44-06:00
draft: false
---

If you have made it this far, I can bet you know what IaC stands for. But for just among friends, IaC means Infrastructure as Code. What it does, is create a declarative way to define the Infrastructure. What's that? I'm glad that you asked. When we create the infrastructure in regular way, i.e. visit the console and click, in the event you have to create it again for whatever reason, say create the DR, restore the environment after Cyber Attack or something much more simpler such as a new customer, your effort on last time will be exactly the same as first time. Not only that, it's prone to human error. The better idea is to declare you resources in the form of code and execute the magic to create the new version of same infrastructure. Not only that, your code essentially become self documenting, as you have complete representation of your system in textual form, which in most circumstances better than picking non-existent people's brain because they have already left the company. In most organizations, where IaC is used, they also use version control software, such as Git to track the evolution of the infrastructure through time and from Git log, we can understand the reasons behind decisions taken.

For IaC, the most popular tool is probably Terraform. In our organization, we primarily use OCI (Oracle Cloud Infrastrure) as our infrastructure platform. Thankfully, Oracle decided to use Terraform as their IDL (Infrastructure Description Language), rather than reinventing the wheel like some other companies. While in our organization, we still didn't complete our transition to Terraform for all infrastructure, we are getting there. At least for me, all new infrastruture I create, I make it a point to use Terraform.

While Oracle uses Terraform as a native IDL, they have their own way of handling and executing Terraform code. While up until this moment I like their approach, that's not to say their tools are without bugs. But I'm sure they'll get better with time, so that's not something that bothers me too much.
