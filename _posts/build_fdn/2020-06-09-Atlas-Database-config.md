---
layout: post
title: "1. Atlas Database Configuration"
date: 2020-06-09 01:00:00 -0400
categories: foundation
site: build
---

Once your Atlas cluster is active, let's configure it.

1. Setup connection security
   1. Click "CONNECT" on the cluster
<img src="/assets/images/Atlas_CONNECT.png" style="border:1px solid black" width="100%" alt="Click "CONNECT" on the cluster"><BR><BR>
   1. On this screen, click "Add Your Current IP Address"
<img src="/assets/images/Atlas_Setup_User.png" style="border:1px solid black" width="100%" alt="On this screen, click Add Your Current IP Address"><BR><BR>
   1. Add in a Description so you know it's yours later on. Note: if you reconnect from a different location (e.g. home vs. work) you will need to add new IPs before you can connect. Click "Add IP Address".
<img src="/assets/images/Atlas_Whitelist_IP.png" style="border:1px solid black" width="100%" alt=" Add in a Description so you know it's yours later on. Note: if you reconnect from a different location (e.g. home vs. work) you will need to add new IPs before you can connect. Click : Add IP Address"><BR><BR>
   1. Add database access. Take note of these credentials on the template under "Atlas Cluster Admin username" and "Atlas Cluster Admin password".
<img src="/assets/images/Atlas_Add_MongoDB_User.png" style="border:1px solid black" width="100%" alt="Add database access. Take note of these credentials on the template under 'Atlas Cluster Admin username' and 'Atlas Cluster Admin password'."><BR><BR>
   1. Click "Close".

Woo hoo!
