---
title: From Ghost to Jekyll
date: 2022-08-31 00:00:00 Z
tags:
- ghost
layout: post
excerpt: No one wants a database
feature-img: assets/img/feature-img/ghost.png
thumbnail: assets/img/feature-img/ghost.png
bootstrap: true
---

I have a bad habbit of switching the backends of my website.  Hey this is IT and development so trying new things is just part of the process.  When I developed the Ghost version of this website, I wrote a script to publish the site on GitHub pages.  I thought I was done.  I would use ghost from this point on... unless Ghost did something earth shatteringly bad.  Well Ghost did.

The Ghost version this site was based on was Ghost in Production mode using SQlite.  Production Ghost lets you choose to use a flat file, or MySQL/MariaDB database I chose SQlite a flat file database.  The key reason for this is for such a small site there is no need for a robust sql server and its one less thing to wory about.  Over time this started to change.  First Ghost production started to require a full SQL datase, so I switched it develop mode.  Now more recently they have removed the ability to use a flat file database all together.  This leaves me in a lurch, my dev site no longer functions after an automated docker update.  While Yes I know its my fault I have to figure out what to do.  I can reinstall an older version of Ghost then export the site, install a new version of ghost and data base server and import the site.... Or I can burn it all and try something different.

Lets light a match

![Foo]({{ 'assets/img/posts/ghost/match.jpg' | relative_url }})

So Why swtich to Jekyll?

My intent was always to publish on github pages.  Ghost was a way to get a GUI instead of writing everything in markdown. I was avoiding coding the site by hand.  Being forced into running the site on a database just does not fill my vision for my own blog.  I developed Drupal sites for years if I was going to run a server with a database I would have deployed Drupal or Backdrop.  Its not just about wanting cheap hosting at github I have no problem paying a provider a few bucks a months to host me.  Its about complexity and ability to easily do move pages/documents to other platforms or archives.  Switching to a system written in markdown provides that ability.

Markdown is the key reason for switching to a Jekyll based publishing platform.  While there are a number of flavors of markdown and any page written in one flavor may have issues in another that negative greatly outweighs having all the pages locked into a database. in what often can be many many different tables or a system that makes exporting the actual pages dificult if not impossible.

So now as of reading this post, I have migrated everything to mark down.  I'm all set to easily move to something else.

