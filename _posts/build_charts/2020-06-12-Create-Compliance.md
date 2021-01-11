---
layout: post
title: "Create Compliance Charts - Numbers"
date: 2020-06-12 05:00:00 -0400
categories: charts
site: build
---

On this page, you will make two of the following Compliance Charts - specifically, the two numbers - Boardings and Violations (Citations and warnigs):<BR>
<img src="/assets/images/ComplianceCharts.png" alt="Compliance Charts - Boardings and Violations (Citations and warnigs)" style="border:1px solid black" width="70%"><BR><BR>

1. First, let's create the "Boardings" number. On the Charts Dashboard, select "Add Chart"
<img src="/assets/images/AddChart.png" alt="" style="border:1px solid black" width="70%"><BR><BR>
1. Set the title to "Boardings"
<img src="/assets/images/BoardingsTitle.png" alt="" style="border:1px solid black" width="100%"><BR><BR>
1. Set the Data Source to wildaid.BoardingReports
<img src="/assets/images/ChooseBRDataSource.png" alt="How to set the Data Source" style="border:1px solid black" width="100%"><BR><BR>
1. Choose a Chart type of Text:
<img src="/assets/images/TableChartType.png" alt="How to select &quot;Text&quot; as the Chart Type" style="border:1px solid black" width="100%"><BR><BR>

1. Choose a Chart subtype of Number:
<img src="/assets/images/NumberChart.png" alt="How to select &quot;Number&quot; as the Chart subtype" style="border:1px solid black" width="100%"><BR><BR>

1. Drag _id to the "Number" field and make sure the aggregation method is "COUNT":
<img src="/assets/images/Count_id.png" alt="" style="border:1px solid black" width="100%"><BR><BR>

And you should see the total number of boarding reports in the window. Select "Save and Close" in the upper right.
<img src="/assets/images/CloseSave.png" alt="Total number of boarding reports" style="border:1px solid black" width="100%"><BR><BR>

1. On your dashboard, mouse over the chart until you see the ellipses. Select the ellipses and select "Embed Chart":
<img src="/assets/images/ClickBCEmbedMenu.png" alt="How to select &quot;Embed Chart&quot;" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, make sure "Enabled authenticated access" is set to "ON", and set the User Specified Filters to "date" and select the green "SAVE" button:<BR>
<img src="/assets/images/SetDateFilter.png" alt="" style="border:1px solid black" width="100%"><BR><BR>

1. Copy the Chart ID:<BR>
<img src="/assets/images/CopyBDChart.png" alt="" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "boardings-count-chart".<BR><BR>

1. Now let's create the "Violations" number. On the Charts Dashboard, mouse over the "Boardings" chart and select the three dots in the corner, then select "Duplicate Chart":<BR><BR>
<img src="/assets/images/DuplicateBoardings.png" alt="How to create &quotDuplicate Charts;&quot;" style="border:1px solid black" width="70%"><BR><BR>

1. Set the title of the new, duplicated chart to "All Violations"
<img src="/assets/images/ViolationsTitle.png" alt="" style="border:1px solid black" width="100%"><BR><BR>

1. To filter for records that contain citations or warnings, select "Filter":<BR>
    <img src="/assets/images/AddChartFilter.png" alt="" style="border:1px solid black" width="100%"><BR><BR>
    Drag inspection -> summary -> violations -> disposition to "+ filter":<BR>
    <img src="/assets/images/DragDisposition.png" alt="How to add &quot;disposition&quot; under Chart Filters" style="border:1px solid black" width="100%"><BR><BR>
    Select only Citation and Warning:<BR>
    <img src="/assets/images/ChooseCitationWarning.png" alt="" style="border:1px solid black" width="100%"><BR><BR>
    And you should see the total number of boarding reports with violations in the window. Select "Save and Close" in the upper right.
    <img src="/assets/images/CloseSave.png" alt="Total number of boarding reports with violations" style="border:1px solid black" width="100%"><BR><BR>

1. On your dashboard, mouse over the "Violations" chart until you see the ellipses. Select the ellipses and select "Embed Chart":
<img src="/assets/images/ClickBCEmbedMenu.png" alt="How to select &quot;Embed Chart&quot; for Violations chart" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, make sure "Enabled authenticated access" is set to "ON", and set the User Specified Filters to "date" and select the green "SAVE" button:<BR>
<img src="/assets/images/SetDateFilter.png" alt="" style="border:1px solid black" width="100%"><BR><BR>

1. Copy the Chart ID:<BR>
<img src="/assets/images/CopyBDChart.png" alt="" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "citations-and-warnings"

Onward to the percentage!
