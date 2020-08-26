---
layout: post
title: "Create Compliance Charts - Numbers"
date: 2020-06-12 05:00:00 -0400
categories: charts
site: build
---

On this page, you will make two of the following Compliance Charts - specifically, the two numbers - Boardings and Violations (Citations and warnigs):<BR>
<img src="/assets/images/ComplianceCharts.png" style="border:1px solid black" width="70%"><BR><BR>

1. First, let's create the "Boardings" number. On the Charts Dashboard, click "Add Chart"
<img src="/assets/images/AddChart.png" style="border:1px solid black" width="70%"><BR><BR>
1. Set the title to "Boardings"
<img src="/assets/images/BoardingsTitle.png" style="border:1px solid black" width="100%"><BR><BR>
1. Set the Data Source to wildaid.BoardingReports
<img src="/assets/images/ChooseBRDataSource.png" style="border:1px solid black" width="100%"><BR><BR>
1. Choose a Chart type of Text:
<img src="/assets/images/TableChartType.png" style="border:1px solid black" width="100%"><BR><BR>

1. Choose a Chart subtype of Number:
<img src="/assets/images/NumberChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. Drag _id to the "Number" field and make sure the aggregation method is "COUNT":
<img src="/assets/images/Count_id.png" style="border:1px solid black" width="100%"><BR><BR>

And you should see the total number of boarding reports in the window. Click "Save and Close"
<img src="/assets/images/CloseSave.png" style="border:1px solid black" width="100%"><BR><BR>

1. On your dashboard, mouse over the chart until you see the ellipses. Click on the ellipses and select "Embed Chart":
<img src="/assets/images/ClickBCEmbedMenu.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, and make sure "Enabled authenticated access" is set to "ON", and copy the Chart ID:
<img src="/assets/images/CopyBDChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "boardings-count-chart".<BR><BR><BR><BR>


1. Now let's create the "Violations" number. On the Charts Dashboard, click "Add Chart"
<img src="/assets/images/AddChart.png" style="border:1px solid black" width="70%"><BR><BR>
1. Set the title to "All Violations"
<img src="/assets/images/ViolationsTitle.png" style="border:1px solid black" width="100%"><BR><BR>
1. Set the Data Source to wildaid.BoardingReports
<img src="/assets/images/ChooseBRDataSource.png" style="border:1px solid black" width="100%"><BR><BR>
1. Choose a Chart type of Text:
<img src="/assets/images/TableChartType.png" style="border:1px solid black" width="100%"><BR><BR>

1. Choose a Chart subtype of Number:
<img src="/assets/images/NumberChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. Drag _id to the "Number" field and make sure the aggregation method is "COUNT":
<img src="/assets/images/Count_id.png" style="border:1px solid black" width="100%"><BR><BR>

1. This chart shows all violations, so you want a count of boarding records that have a violation disposition of either Citation or Warning. To do this, paste the following query into the "Query" field at the top, and then click "Apply":<BR>
`{"inspection.summary.violations.disposition": {$in: [ "Citation", "Warning" ] }}`<BR>
<img src="/assets/images/ViolationsQuery.png" style="border:1px solid black" width="100%"><BR><BR>

You will see the number of boarding reports that have any violation in the window. Click "Save and Close".

1. On your dashboard, mouse over the chart until you see the ellipses. Click on the ellipses and select "Embed Chart":
<img src="/assets/images/ClickBCEmbedMenu.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, and make sure "Enabled authenticated access" is set to "ON", and copy the Chart ID:
<img src="/assets/images/CopyBDChart.png" style="border:1px solid black" width="100%"><BR><BR>
1. Select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "citations-and-warnings"

Onward to the percentage!
