---
layout: post
title: "Embed Boarding List Chart"
date: 2020-06-12 03:00:00 -0400
categories: charts
site: build
---

Now that you have created the Boarding List Chart, let's embed it in your application.

1. On your dashboard, mouse over the chart until you see the ellipses. Click on the ellipses and select "Embed Chart":
<img src="/assets/images/ClickEmbedMenu.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, then set "Enabled authenticated access" to "ON", then click "Add" to set up an Authentication Provider.
<img src="/assets/images/TurnOnAuthAccess.png" style="border:1px solid black" width="100%"><BR><BR>

1. Enter a name for the authentication integration, such as "O-FISH Charts for Web"<BR><BR>
1. Select "Realm" as the Provider.<BR><BR>
1. Select your Realm Project (our example is WildAid)<BR><BR>
1. Select your Realm app - this is the same as your Realm App ID (e.g. wildaid-xxxxx)<BR><BR>
1. Set the "Fetch data using Realm app" toggle to "ON"<BR><BR>
1. Set the Realm Service Name to "mongodb-atlas"<BR><BR>
1. Your settings should look something like this - if all looks good, click "Save Provider":
<img src="/assets/images/AuthFields.png" style="border:1px solid black" width="100%"><BR><BR>

1. When you have a green verification section, click "Back to Embed Chart":
<img src="/assets/images/VerifyEmbed.png" style="border:1px solid black" width="100%"><BR><BR>

1. Set the User Specified Filters to "date":<BR>
<img src="/assets/images/SetDateFilter.png" style="border:1px solid black" width="100%"><BR><BR>

1. Copy the Charts Base URL:
<img src="/assets/images/CopyURL.png" style="border:1px solid black" width="100%"><BR><BR>

1. Paste the URL into your web application's src/config.js file (where the realmAppId is set):
<img src="/assets/images/PasteURL.png" style="border:1px solid black" width="100%"><BR><BR>

1. Go back to the Web UI and copy the Chart ID:
<img src="/assets/images/CopyBDChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. In the Charts UI, click "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "patrol-hours".


