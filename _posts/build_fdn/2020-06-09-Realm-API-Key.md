---
layout: post
title: "4. Realm API Key Generation"
date: 2020-06-09 04:00:00 -0400
categories: foundation
site: build
---


1. In order to import the Realm App functions and triggers, we need to authenticate with an API key.

   1. Click on the arrow next to Access Manager, then Project Access:
<img src="/assets/images/Atlas_Project_Access.png" alt="Location for accessing Project Access" style="border:1px solid black" width="100%"><BR><BR>
   1. Click "API Keys"
<img src="/assets/images/API_Key.png" alt="Location for Api Keys" style="border:1px solid black" width="100%"><BR><BR>
   1. Click "Create API Key" on the right-hand side of your screen
<img src="/assets/images/Click_Create_API_Key.png" alt="Create Api Key Location" style="border:1px solid black" width="100%"><BR><BR>
   1. Copy the Public Key into the template under "API Public Key".<BR><BR>
   1. Add in a description and allow all permissions except read-only. Click "Next".
<img src="/assets/images/API_Key_Options.png" alt="options for API Keys" style="border:1px solid black" width="100%"><BR><BR>
   1. Copy your private key into the template as "API Private Key". Click "Add Whitelist Entry".
<img src="/assets/images/Copy_Private_Key.png" alt="instruction for white listing entry" style="border:1px solid black" width="100%"><BR><BR>
   1. Add your current IP to the whitelist and click "Save".
<img src="/assets/images/Add_IP_API_Key_Whitelist.png" alt="instruction for adding ip to the whitelist" style="border:1px solid black" width="100%"><BR><BR>

Now you're ready to set up the command-line interface to import the Realm app!
