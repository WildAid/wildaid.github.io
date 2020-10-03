---
layout: post
title: "Embed Boarding List Chart"
date: 2020-06-12 03:00:00 -0400
categories: charts
site: build
---

Now that you have created the Boarding List Chart, let's embed it in your application.

1. On your dashboard, mouse over the chart until you see the ellipses. Select the ellipses and select "Embed Chart":
<img src="/assets/images/ClickEmbedMenu.png" alt="Where to find 'Embed Chart' button after clicking the ellipses" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, then set "Enabled authenticated access" to "ON", then select "Add" to set up an Authentication Provider.
<img src="/assets/images/TurnOnAuthAccess.png" alt="How to add an Authentication Provider" style="border:1px solid black" width="100%"><BR><BR>

1. Enter a name for the authentication integration, such as "O-FISH Charts for Web"<BR><BR>
1. Select "Realm" as the Provider.<BR><BR>
1. Select your Realm Project (our example is WildAid)<BR><BR>
1. Select your Realm app - this is the same as your Realm App ID (e.g. wildaid-xxxxx)<BR><BR>
1. Set the "Fetch data using Realm app" toggle to "ON"<BR><BR>
1. Set the Realm Service Name to "mongodb-atlas"<BR><BR>
1. Your settings should look something like this - if all looks good, select "Save Provider":
<img src="/assets/images/AuthFields.png" alt="Authentication Provider settings. Name: 'O-FISH Charts for Web', Provider: 'Realm', Realm Project: 'WildAid', Realm App: 'wildaidapp-sulby', Fetch data using Realm app: Turned on, Realm Service Name: 'MongoDB-atlas'" style="border:1px solid black" width="100%"><BR><BR>

1. When you have a green verification section, select "Back to Embed Chart":
<img src="/assets/images/VerifyEmbed.png" alt="Success Message saying 'O-FISH Charts for Web authentication provider added' with back button" style="border:1px solid black" width="100%"><BR><BR>

1. Set the User Specified Filters to "date" and select "Save":<BR>
<img src="/assets/images/SetDateFilter.png" alt="User Specified Filters box under Authenticated tab with 'date' tag" style="border:1px solid black" width="100%"><BR><BR>

1. Copy the Charts Base URL:
<img src="/assets/images/CopyURL.png" alt="Where to copy Charts Base URL under Authenticated Tab" style="border:1px solid black" width="100%"><BR><BR>

1. Paste the URL into your web application's src/config.js file (where the realmAppId is set):
<img src="/assets/images/PasteURL.png" alt='Inside chartsConfig, add baseUrl: "Copied Charts Base URL"' style="border:1px solid black" width="100%"><BR><BR>

1. Go back to the Web UI and copy the Chart ID:
<img src="/assets/images/CopyBDChart.png" alt="Where to copy Chart ID under Authenticated Tab" style="border:1px solid black" width="100%"><BR><BR>

1. In the Charts UI, select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "patrol-hours".


