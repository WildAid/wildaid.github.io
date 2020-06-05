---
layout: post
title: "10. Test Web App"
date: 2020-05-09 10:00:00 -0400
categories: build
---

1. Go to your website with the URL from the template<BR>
1. Login with your "App Admin username" and "App Admin password"<BR>
1. If you can’t login, check:<BR>
 Fields in src/.env/config.js<BR>
 The Realm user was created in the Realm<BR>
 The Realm user is in a document the wildaid.User collection and the Realm ID is correct<BR>
1. Charts won’t work, this is expected<BR>
<img src="/assets/images/Charts_Not_Working.png" style="border:1px solid black" width="100%"><BR><BR>
1. Search for “Mia” and you should see highlighting, click "See all results for mia"<BR>
<img src="/assets/images/Search_Mia.png" style="border:1px solid black" width="100%"><BR><BR>
1. Click "see all results" for "Boardings"
<img src="/assets/images/Search_Results.png" style="border:1px solid black" width="100%"><BR><BR>
1. You should see a records from the sample data<BR>
 Click "Filter" and then "Red" under "Risk":
<img src="/assets/images/Filter.png" style="border:1px solid black" width="100%"><BR><BR>
1. You should see only records with red risk levels:
<img src="/assets/images/RedBoardings.png" style="border:1px solid black" width="100%"><BR><BR>

Huzzah! Your web application connects to your Realm data!

From here, you can:<BR><BR>

Build the Android app<BR><BR>
Build the iOS app<BR><BR>
Look into the functions and triggers<BR><BR>
Put Charts into the web interface<BR><BR>


