---
title: Alma Linux 9 Installing Ruby
date: 2023-09-20 08:47:00 -07:00
published: false
---

I am working on a Jekyll project which requires Ruby.  As is common with most distributions of linux, the version of Ruby or many other things you want is not the default in the distribution.  In my case, I needed a version of Ruby that is not the default.

Of course we update the distro first

> sudo dnf update

Install dependencies

> sudo dnf install git gnupg2 git-core zlib zlib-devel gcc-c++ patch readline readline-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl tar sqlite-devel

Install Dev tools

> sudo dnf groupinstall "Development Tools"

Install RVM (Ruby Version Manager

> curl -sSL https://get.rvm.io | sudo bash

sudo usermod -aG rvm $USER

source /etc/profile.d/rvm.sh