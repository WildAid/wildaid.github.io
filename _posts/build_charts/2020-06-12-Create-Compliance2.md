---
layout: post
title: "Create Compliance Charts - Percentage"
date: 2020-06-12 06:00:00 -0400
categories: charts
site: build
---

On this page, you will make the Compliance Rate chart - shown as the percentage below:<BR>
<img src="/assets/images/ComplianceCharts.png" style="border:1px solid black" width="70%"><BR><BR>

1. On the Charts Dashboard, click "Add Chart"<BR>
<img src="/assets/images/AddChart.png" style="border:1px solid black" width="70%"><BR><BR>

1. Set the title to "Compliance Rate"<BR>
<img src="/assets/images/CRTitle.png" style="border:1px solid black" width="100%"><BR><BR>
1. Set the Data Source to wildaid.BoardingReports
<img src="/assets/images/ChooseBRDataSource.png" style="border:1px solid black" width="100%"><BR><BR>
1. Choose a Chart type of Text:
<img src="/assets/images/TableChartType.png" style="border:1px solid black" width="100%"><BR><BR>

1. Choose a Chart subtype of Number:
<img src="/assets/images/NumberChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. We need to calculate the percentage of a subset of data as compared to the total amount of data, which we cannot do with a calculated field. However, we can do this with an aggregation, which we can paste into the Query field, and then click "Apply":<BR><BR>
`[{$group: { _id: null, total: { $sum: 1 },` <BR>
  `justCompliant: { $sum: { $cond: { ` <BR>
        `'if': {$and: [ ` <BR>
          `{$ifNull: ['$inspection.summary.violations.disposition',0]}, ` <BR>
          `{$or: [ ` <BR>
          `{$in: ['Warning','$inspection.summary.violations.disposition']}, ` <BR>
          `{$in: ['Citation','$inspection.summary.violations.disposition']} ` <BR>
          `] } ] }, ` <BR>
        `'then': 0, 'else': 1 ` <BR>
      `} } }` <BR>
`}}, {$project: {` <BR>
  `percentage: { $divide: [ '$justCompliant', '$total' ] },` <BR>
  `inspection: 1, justCompliant: 1, total: 1` <BR>
`}}]`<BR>
<img src="/assets/images/ComplianceRateQuery.png" style="border:1px solid black" width="100%"><BR><BR>

1. You will see your fields have changed to an ID and three numbers - justCompliant, percentage, and total:<BR>
<img src="/assets/images/NewFields.png" style="border:1px solid black" width="50%"><BR><BR>

1. Drag "percentage" to the "Number" field, making sure that the aggregate is by "SUM":<BR>
<img src="/assets/images/PercentageDrag.png" style="border:1px solid black" width="100%"><BR><BR>

1. The field is in decimal value:<BR>
<img src="/assets/images/Percentage.png" style="border:1px solid black" width="100%"><BR><BR>

1. Click "Customize", then percentage, then toggle Decimals and set it to 2:<BR>
<img src="/assets/images/Decimals.png" style="border:1px solid black" width="100%"><BR><BR>

1. Toggle the Multiplier and set it to 100.<BR>
<img src="/assets/images/Multiplier.png" style="border:1px solid black" width="100%"><BR><BR>

1. Toggle the Suffix and set it to be %:<BR>
<img src="/assets/images/Suffix.png" style="border:1px solid black" width="100%"><BR><BR>

And you should see the percentage in the window. Click "Save and Close"
<img src="/assets/images/SaveClosePercentage.png" style="border:1px solid black" width="100%"><BR><BR>

1. On your dashboard, mouse over the chart until you see the ellipses. Click on the ellipses and select "Embed Chart":
<img src="/assets/images/ClickBCEmbedMenu.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, make sure "Enabled authenticated access" is set to "ON", and set the User Specified Filters to "date" and click the green "SAVE" button:<BR>
<img src="/assets/images/SetDateFilter.png" style="border:1px solid black" width="100%"><BR><BR>

1. Copy the Chart ID:<BR>
<img src="/assets/images/CopyBDChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "compliance-rate".<BR><BR><BR><BR>

Onward to the donut chart!
