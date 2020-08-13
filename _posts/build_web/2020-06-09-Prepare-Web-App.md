---
layout: post
title: "Build Web App - Preparation"
date: 2020-06-09 08:00:00 -0400
categories: web
site: build
---

Now it's time to put your Realm app into Development mode so deploying the web app is easier, and set up a fulltext index with Atlas Search:

1. In the Realm UI, enable Realm Sync "Development Mode" - Click Sync on left-hand menu, then “Development Mode” tab.  
        <img src="/assets/images/Sync_Dev_Mode.png" style="border:1px solid black" width="100%"><BR><BR>
1. Fill in the appropriate information - Select the cluster name with RealmSync modifier, the database is "wildaid", the partition key is "agency" and if prompted the field type is "string". Click "Turn Dev Mode On":
        <img src="/assets/images/Dev_Mode_On.png" style="border:1px solid black" width="100%"><BR><BR>

1. Click "OK" that Development Mode is on. <BR><BR>
1. Despite other indications, development mode is not really on until you click "Review and Deploy" in the blue bar on the top, and then deploy the changes:
        <img src="/assets/images/Review_Deploy.png" style="border:1px solid black" width="100%"><BR><BR>


Onwards!

