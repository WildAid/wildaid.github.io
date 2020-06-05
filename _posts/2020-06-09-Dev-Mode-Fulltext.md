---
layout: post
title: "8. Dev Mode Fulltext"
date: 2020-05-09 08:00:00 -0400
categories: build
---

Now it's time to put your Realm app into Development mode so deploying the web app is easier, and set up a fulltext index with Atlas Search:

1. In the Realm UI, enable Realm Sync "Development Mode" - Click Sync on left-hand menu, then “Development Mode” tab.  
        <img src="/assets/images/Sync_Dev_Mode.png" style="border:1px solid black" width="100%"><BR><BR>
1. Fill in the appropriate information - Select the cluster name with RealmSync modifier, the database is "wildaid", the partition key is "agency" and if prompted the field type is "string". Click "Turn Dev Mode On":
        <img src="/assets/images/Dev_Mode_On.png" style="border:1px solid black" width="100%"><BR><BR>

1. Click "Review and Deploy" in the blue bar on the top, and then deploy the changes:
        <img src="/assets/images/Review_Deploy.png" style="border:1px solid black" width="100%"><BR><BR>

1.  Add fulltext search index - go to the Atlas UI for the cluster and click on the "Collections" tab. Click on the "BoardingReports" collection.
        <img src="/assets/images/BR_Collection.png" style="border:1px solid black" width="100%"><BR><BR>
1. Click on the "Search" tab, and then "Create Search Index":
        <img src="/assets/images/Search_Index.png" style="border:1px solid black" width="100%"><BR><BR>
    1. Click "Create Index" to create the default fulltext search index, mapping every field.
        <img src="/assets/images/Create_Search_Index.png" style="border:1px solid black" width="100%"><BR><BR>
    1. Click "Close" and your index will build in the background

Onwards!

