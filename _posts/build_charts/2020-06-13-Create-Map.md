---
layout: post
title: 'Create Map Chart'
date: 2020-06-13 00:00:00 -0400
categories: charts
site: build
---

On this page, you will make the map:
<img src="/assets/images/Map.png" alt="an example of a map chart with coloured markers for coordinates" style="border:1px solid black" width="100%"><BR><BR>

1. On the Charts Dashboard, select "Add Chart"<BR>
   <img src="/assets/images/AddChart.png" alt="location of the button to click to add chart" style="border:1px solid black" width="100%"><BR><BR>

1. Set the title to "Boardings"<BR>
   <img src="/assets/images/MapTitle.png" alt="where to add a title for a map" style="border:1px solid black" width="100%"><BR><BR>

1. Set the Data Source to wildaid.BoardingReports:<BR>
   <img src="/assets/images/ChooseBRDataSource.png" alt="list of data sources and location of wildaid.BoardingReports data source" style="border:1px solid black" width="70%"><BR><BR>

1. Choose a Chart type of Geospatial:<BR>
   <img src="/assets/images/Geospatial.png" alt="list of chart types and location of geospatial option" style="border:1px solid black" width="70%"><BR><BR>

1. Choose a Chart subtype of Scatter:<BR>
   <img src="/assets/images/Scatter.png" alt="chart type options" style="border:1px solid black" width="70%"><BR><BR>

1. Drag "location" to Coordinates:<BR>
   <img src="/assets/images/DragLocation.png"  alt="the coordinates field to which location should be dragged" style="border:1px solid black" width="70%"><BR><BR>

1. Drag inspection -> summary -> safetyLevel -> level to "Color":<BR>
   <img src="/assets/images/MapColor.png" alt="fields menu open showing color option and location to drag to" style="border:1px solid black" width="70%"><BR><BR>

1. Select "Customize". Set the Label Override to "Risk" and drag the colors to the proper ordering so that the colors match their labels:<BR>
   <img src="/assets/images/ChangeMapColors.png" alt="toggle switch for label override option" style="border:1px solid black" width="50%"><BR><BR>

1. Your map looks something like this. Select "Save and Close":<BR>
   <img src="/assets/images/SaveCloseMap.png" alt="final view of map with location of save and close button" style="border:1px solid black" width="100%"><BR><BR>

1. On your dashboard, mouse over the chart until you see the ellipses. Select the ellipses and select "Embed Chart":
   <img src="/assets/images/ClickBCEmbedMenu.png" alt="menu that appears on mouseover and location of embed chart option" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, make sure "Enabled authenticated access" is set to "ON", and set the User Specified Filters to the values: "date" "\_id" and select the green "SAVE" button:<BR>
   <img src="/assets/images/AddIdDateEmbed.png" alt="tabbed menu with authenticated section highlighted and open" style="border:1px solid black" width="100%"><BR><BR>

1. Copy the Chart ID:<BR>
   <img src="/assets/images/EmbedMap.png" alt="tabbed menu with authenticated section highlighted and open; location of the chart's url visible next to copy button" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "boardings".<BR><BR>

That's it! You've created all the charts!
