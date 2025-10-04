---
title: Why Ghost on Github pages
date: 2021-09-26 00:00:00 Z
tags:
- ghost
layout: post
excerpt: Ghost can be a simple way to setup a self hosted blog
feature-img: assets/img/feature-img/ghost.png
thumbnail: assets/img/feature-img/ghost.png
bootstrap: true
---

The process of bringing this website online involved a lot of trial and error.  Error was mainly caused by the normal issues one runs into when self hosting.  The rest where caused by a large number of scripts and instructions designed for older or different operating systems and differing versions of node, npm and python refusing to work as documented.    

So I started this project with a goal, use GitHub pages to host my ghost site.  Github's webpage hosting is done through https://pages.github.io.  GitHub Pages serves up static content from a specific branch of a GitHub project.  GitHub alson uses Jekyll a static site generator to create pages.  You are not required to build pages in Jekyll.  I built a few sites in Jekyl over the years.  I have decided its just not for me.  I like my wysiwyg page creation programs, and I want more theme options that do not involve building css from scratch or even a template starting point.  

In comes Ghost a full featured CMS with a lot of fancy features.  Ghost has one very nice trick, it is very simple to get started with.  That learning curve is perfect for someone like me who comes from the land of Drupal.  Drupal is a system that is amazingly difficult to publish a simple webpage with.

Ghost turns out to be a much better fit for my workflow.  Building a site in ghost alllows me to create web pages and blog entries visually without needing to write markdown, then render and see what it looks like.  Ghost creates good looking websites with very little design needed, or can be completely customized for an exact look and feel.  How far you want to go with customization is completely up to you, there's no right or wrong approach! The majority of people use one of Ghost's built-in themes to get started, and then progress to something more bespoke later on as their site grows.  

![Foo]({{ 'assets/img/feature-img/ghost.png' | relative_url }})

My ghost site is self hosted on a rocky linux server running on my home proxmox server.  The process is build a site in ghost, then use a script to output a static version then upload the site as an update to GitHub.  I ran into a number of web pages and GitHub projects out there dedicated to this process.  Every one of the projects and or tutorials had issues.  There is some abandonware, instructions from 2013 and a myriad of other opinings on the process that are just out of date.  I was finally able to cobble together a working script that can be easily (sort of) be replicated by others.  

The script uses the ghost command shell to build this site.  Then the Ghost Static Site Generator to generate a static version in a folder, and finally Git / GitHub to push the entire mess to a repository.  Github Pages does the rest of the publishing.  I burned through 3 separate scripts and full server installs in variouse attempts that in the end did not work.  Finally I built my own script to generate the static site and upload it to git hub.  I am hooking this script up with cron to run every 6 hours.  I do not post blog entriews that often.  With this setup I can create a new post remotely and it will eventually get posted to github.  I tend to post on a weekly basis, 6 hours is just not going to hurt, and running that script to publish every hour or even more often is a waste of computing resources and power.  Trust me here in Northern California the cost of power is a big issue.

With so much generously provided by other for me to use and get to this point, I have posted my script, and full instructions on the process on GitHub.

Enjoy the script!

[https://github.com/mjh2901/ghost-on-github](https://github.com/mjh2901/ghost-on-github)