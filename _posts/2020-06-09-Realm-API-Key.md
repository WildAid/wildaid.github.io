---
layout: post
title: "4. Realm App Install and Import"
date: 2020-05-09 04:00:00 -0400
categories: build
---

Recap:<BR>
Project Name: WildAid<BR>
Cluster name: OceanWatchData<BR><BR>


1. In order to import the Realm App functions and triggers, we need to authenticate with an API key.

   1. Click Access Manager, then Project Access:
<img src="/assets/images/Atlas_Project_Access.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Click "API Keys"
<img src="/assets/images/API_Key.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Click "Create API Key" on the right-hand side of your screen
<img src="/assets/images/Click_Create_API_Key.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Copy the Public Key into the template under "API Public Key".
   1. Add in a description and allow all permissions except read-only. Click "Next".
<img src="/assets/images/API_Key_Options.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Copy your private key into the template as "API Private Key". Click "Add Whitelist Entry".
<img src="/assets/images/Copy_Private_Key.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Add your current IP to the whitelist and click "Save".
<img src="/assets/images/Add_IP_API_Key_Whitelist.png" style="border:1px solid black" width="100%"><BR><BR>

Now you're ready to set up stitch-cli!
