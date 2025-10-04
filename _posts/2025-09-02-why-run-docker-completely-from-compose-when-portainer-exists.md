---
title: "Why Run Docker completely from Compose when Portainer exists?"
date: '2025-09-02 12:19:23 -0700'
tags:
  - docker
  - server
  - code
layout: post
excerpt: The key is to be able to move to a new server without re-inventing the wheel
feature-img: /assets/img/header/header_matterhorn.png
thumbnail: /assets/img/header/header_matterhorn.png
bootstrap: true
published: true
---
# Why Run Docker completely from Compose when Portainer exists?

Over the years I have run a lot of the same services in a lot of different ways. From installing PHP apps on the LAMP (Linux, Apache, MySQL, PHP) directly on servers. Building VMs to run individual apps to eventually using Docker to deploy apps. Even with Docker I started in VMs, moved to LXC Containers, then at home migrated to the GUI in TrueNAS Scale. The one crutch that tied it together yet made migrating impossible was my reliance on Portainer, a web GUI for Docker.

Over time I tweaked setups in the Portainer GUI so they no longer really resembled what I had initially launched. As you have seen I may run the same programs but how I install them and what hosts them changes all the time. For me, changing hosts wound up being a frustrating process of starting all over again and hopefully being able to keep my files and in many cases that required some sort of re-import or hack found online or worse, walking away and completely starting from scratch.

I recently started abandoning TrueNAS and moving as much as possible to a Mac-based server. Eventually this box is going to be replaced by a Mac Studio M1 when the M5 Mac Studio comes out. This move will net me a much smaller energy footprint compared to the current Intel machine. Docker is also a little less of a nightmare on the Mac at this point.

The project of migrating back to the Mac has allowed me to finally do what I should have done a long time ago, learn Docker Compose and make each app completely portable along with its data. Yes, I will still use Portainer but now it's more of a let me see what is going on vs deployment and management. This means every container is launched using Docker Compose and a docker-compose.yml file. If I need to tweak the image I tweak the docker-compose.yml file then bring down and relaunch the container. What I end up with is a file that explains what I have done over time and all I have to do is move the folder to a new server, change any hard-wired locations in the compose file and run docker compose up -d and I am back up and running.

The world has done this for years, running infrastructure from code is not a new concept but actually doing it is new to me. 

I highly recommend everyone using docker start trying to work with containers using docker compose.  No only does it make your setup portable it basically creates documentation for how an application runs.  That and if you cant get something to work, the various Large Language Models can often fix your error and teach you something new in compose.

Go fourth and control docker in code.


