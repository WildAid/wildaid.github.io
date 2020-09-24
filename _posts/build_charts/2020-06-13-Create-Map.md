---
layout: post
title: "Create Map Chart"
date: 2020-06-13 00:00:00 -0400
categories: charts
site: build
---

On this page, you will make the map:
<img src="/assets/images/Map.png" style="border:1px solid black" width="100%"><BR><BR>

1. On the Charts Dashboard, select "Add Chart"<BR>
<img src="/assets/images/AddChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. Set the title to "Boardings"<BR>
<img src="/assets/images/MapTitle.png" style="border:1px solid black" width="100%"><BR><BR>

1. Set the Data Source to wildaid.BoardingReports:<BR>
<img src="/assets/images/ChooseBRDataSource.png" style="border:1px solid black" width="70%"><BR><BR>

1. Choose a Chart type of Geospatial:<BR>
<img src="/assets/images/Geospatial.png" style="border:1px solid black" width="70%"><BR><BR>

1. Choose a Chart subtype of Scatter:<BR>
<img src="/assets/images/Scatter.png" style="border:1px solid black" width="70%"><BR><BR>

1. Drag "location" to Coordinates:<BR>
<img src="/assets/images/DragLocation.png" style="border:1px solid black" width="70%"><BR><BR>

1. Drag inspection -> summary -> safetyLevel -> level to "Color":<BR>
<img src="/assets/images/MapColor.png" style="border:1px solid black" width="70%"><BR><BR>

1. Select "Customize". Set the Label Override to "Risk" and drag the colors to the proper ordering so that the colors match their labels:<BR>
<img src="/assets/images/ChangeMapColors.png" style="border:1px solid black" width="50%"><BR><BR>

1. Your map looks something like this. Select "Save and Close":<BR>
<img src="/assets/images/SaveCloseMap.png" style="border:1px solid black" width="100%"><BR><BR>

1. On your dashboard, mouse over the chart until you see the ellipses. Select the ellipses and select "Embed Chart":
<img src="/assets/images/ClickBCEmbedMenu.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, make sure "Enabled authenticated access" is set to "ON", and set the User Specified Filters to the values: "date" "_id" and select the green "SAVE" button:<BR>
<img src="/assets/images/AddIdDateEmbed.png" style="border:1px solid black" width="100%"><BR><BR>

1. Copy the Chart ID:<BR>
<img src="/assets/images/EmbedMap.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "boardings".<BR><BR><BR><BR>

That's it; you've created all the charts!
