---
layout: post
title: "Test Web App"
date: 2020-06-09 10:00:00 -0400
categories: web
site: build
---

{% include login_web.md %}

1. Charts won’t work, this is expected<BR>
<img alt="Image showing the dashboard when charts wont work" src="/assets/images/Charts_Not_Working.png" style="border:1px solid black" width="100%"><BR><BR>
1. Search for “Mia” and you should see some results with fuzzy matching. Click "See all results for mia". If this is not working, ensure that the Atlas Search Index has completed its build.<BR>
<img  alt="How to check all Results for 'Mia' " src="/assets/images/Search_Mia.png" style="border:1px solid black" width="100%"><BR><BR>
1. Click "See all" for "Boardings"
<img  alt="Where to select to view all the Boardings" src="/assets/images/Search_Results.png" style="border:1px solid black" width="100%"><BR><BR>
1. You should see a records from the sample data<BR>
 Click "Filter" and then "Red" under "Risk":
<img  alt="How to filter Red Risks from the Records" src="/assets/images/Filter.png" style="border:1px solid black" width="100%"><BR><BR>
1. You should see only records with red risk levels:
<img  alt="View Records with Red Risks" src="/assets/images/RedBoardings.png" style="border:1px solid black" width="100%"><BR><BR>

Huzzah! Your web application connects to your Realm data!

From here, you can:<BR><BR>

<A HREF="/android/2020/06/11/Build-Android.html">Build the Android app</A><BR><BR>
<A HREF="/ios/2020/06/11/Build-iOS.html">Build the iOS app</A><BR><BR>
<A HREF="/charts/2020/06/11/Build-Charts.html">Create Charts and add them into the web interface</A><BR><BR>


