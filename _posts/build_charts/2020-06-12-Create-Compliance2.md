---
layout: post
title: "Create Compliance Charts - Percentage"
date: 2020-06-12 06:00:00 -0400
categories: charts
site: build
---

On this page, you will make the Compliance Rate chart - shown as the percentage below:<BR>
<img src="/assets/images/ComplianceCharts.png" alt="A 26.71% figure displayed alongside a donut chart showing a boardings and violations breakdown." style="border:1px solid black" width="70%"><BR><BR>

1. On the Charts Dashboard, select "Add Chart"<BR>
<img src="/assets/images/AddChart.png" alt="How to add a new chart." style="border:1px solid black" width="100%"><BR><BR>

1. Set the title to "Compliance Rate"<BR>
<img src="/assets/images/CRTitle.png" alt="Typing a chart title within the provided text box." style="border:1px solid black" width="100%"><BR><BR>
1. Set the Data Source to wildaid.BoardingReports
<img src="/assets/images/ChooseBRDataSource.png" alt="Setting the boarding reports data source from a drop-down menu." style="border:1px solid black" width="100%"><BR><BR>
1. Choose a Chart type of Text:
<img src="/assets/images/TableChartType.png" alt="Selecting a chart type from the drop-down menu." style="border:1px solid black" width="100%"><BR><BR>

1. Choose a Chart subtype of Number:
<img src="/assets/images/NumberChart.png" alt="Picking the number subtype to represent the data." style="border:1px solid black" width="100%"><BR><BR>

1. We need to calculate the percentage of a subset of data as compared to the total amount of data, which we cannot do with a calculated field. However, we can do this with an aggregation, which we can paste into the Query field, and then select "Apply":
```javascript
   [{$group: { _id: null, total: { $sum: 1 },
      justCompliant: { $sum: { $cond: { 
         'if': {$and: [ 
            {$ifNull: ['$inspection.summary.violations.disposition',0]}, 
            {$or: [ 
            {$in: ['Warning','$inspection.summary.violations.disposition']}, 
            {$in: ['Citation','$inspection.summary.violations.disposition']} 
         ] } ] }, 
         'then': 0, 'else': 1 
      } } }
   }}, {$project: {
      percentage: { $divide: [ '$justCompliant', '$total' ] },
      inspection: 1, justCompliant: 1, total: 1
   }}]
```
<img src="/assets/images/ComplianceRateQuery.png" alt="How to apply the aggregation after pasting it into the query field." style="border:1px solid black" width="100%"><BR><BR>

1. You will see your fields have changed to an ID and three numbers - justCompliant, percentage, and total:<BR>
<img src="/assets/images/NewFields.png" alt="Sidebar menu shows the fields created by the aggregation for the data source." style="border:1px solid black" width="50%"><BR><BR>

1. Drag "percentage" to the "Number" field, making sure that the aggregate is by "SUM":<BR>
<img src="/assets/images/PercentageDrag.png" alt="How to ensure the aggregate percentage is calculated." style="border:1px solid black" width="100%"><BR><BR>

1. The field is in decimal value:<BR>
<img src="/assets/images/Percentage.png" alt="The result is displayed as a decimal with twelve decimal places." style="border:1px solid black" width="100%"><BR><BR>

1. Select "Customize", then percentage, then toggle Decimals and set it to 2:<BR>
<img src="/assets/images/Decimals.png" alt="Simplifying the decimal into two decimal places." style="border:1px solid black" width="100%"><BR><BR>

1. Toggle the Multiplier and set it to 100.<BR>
<img src="/assets/images/Multiplier.png" alt="Multiplying the simplified decimal by 100." style="border:1px solid black" width="100%"><BR><BR>

1. Toggle the Suffix and set it to be %:<BR>
  <img src="/assets/images/Suffix.png" alt="How to clearly represent the decimal as a percentage." style="border:1px solid black" width="100%"><BR><BR>
  And you should see the percentage in the window. Select "Save and Close"
  <img src="/assets/images/SaveClosePercentage.png" alt="Saving the newly created percentage." style="border:1px solid black" width="100%"><BR><BR>

1. On your dashboard, mouse over the chart until you see the ellipses. Select the ellipses and select "Embed Chart":
<img src="/assets/images/ClickBCEmbedMenu.png" alt="How to access the embeded chart feature." style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, make sure "Enabled authenticated access" is set to "ON", and set the User Specified Filters to "date" and select the green "SAVE" button:<BR>
<img src="/assets/images/SetDateFilter.png" alt="Setting proper authentication access, while specifying the date data field to use to filter this embedded chart." style="border:1px solid black" width="100%"><BR><BR>

1. Copy the Chart ID:<BR>
<img src="/assets/images/CopyBDChart.png" alt="How to get the URL to share this newly created compliance rate percentage chart." style="border:1px solid black" width="100%"><BR><BR>

1. Select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "compliance-rate".<BR><BR><BR><BR>

Onward to the donut chart!
