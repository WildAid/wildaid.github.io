---
layout: post
title: "Test Web App"
date: 2020-06-09 10:00:00 -0400
categories: web
site: build
---

1. Go to your website with the URL from the template<BR><BR>
1. Login with your "App Admin username" and "App Admin password"<BR><BR>
1. If you can’t login, check:<BR>
 Make sure `src/config.js` exists and fields are set - especially `realm-app-id`<BR>
 The Atlas Search index completed its build<BR>
 The Realm user was created in the Realm<BR>
 The Realm user is in a document the wildaid.User collection and the Realm ID is correct<BR><BR>
1. Charts won’t work, this is expected<BR>
<img src="/assets/images/Charts_Not_Working.png" style="border:1px solid black" width="100%"><BR><BR>
1. Search for “Mia” and you should see some results with fuzzy matching. Click "See all results for mia".<BR>
<img src="/assets/images/Search_Mia.png" style="border:1px solid black" width="100%"><BR><BR>
1. Click "See all" for "Boardings"
<img src="/assets/images/Search_Results.png" style="border:1px solid black" width="100%"><BR><BR>
1. You should see a records from the sample data<BR>
 Click "Filter" and then "Red" under "Risk":
<img src="/assets/images/Filter.png" style="border:1px solid black" width="100%"><BR><BR>
1. You should see only records with red risk levels:
<img src="/assets/images/RedBoardings.png" style="border:1px solid black" width="100%"><BR><BR>

Huzzah! Your web application connects to your Realm data!

From here, you can:<BR><BR>

<A HREF="/android/2020/06/11/Build-Android.html">Build the Android app</A><BR><BR>
<A HREF="/ios/2020/06/11/Build-iOS.html">Build the iOS app</A><BR><BR>
<A HREF="/charts/2020/06/11/Build-Charts.html">Create Charts and add them into the web interface</A><BR><BR>


