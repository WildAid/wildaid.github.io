---
layout: post
title: "Create Compliance Charts - Donut"
date: 2020-06-12 07:00:00 -0400
categories: charts
site: build
---

On this page, you will make the Compliance Rate donut chart shown below, on the right:<BR>
<img src="/assets/images/ComplianceCharts.png" style="border:1px solid black" width="70%"><BR><BR>

1. On the Charts Dashboard, select "Add Chart"<BR>
<img src="/assets/images/AddChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. Set the title to "Boarding Compliance"<BR>
<img src="/assets/images/BCTitle.png" style="border:1px solid black" width="100%"><BR><BR>
1. Set the Data Source to wildaid.BoardingReports
<img src="/assets/images/ChooseBRDataSource.png" style="border:1px solid black" width="100%"><BR><BR>
1. Choose a Chart type of Circular, which will the default chart subtype "Donut":
<img src="/assets/images/CircularChartType.png" style="border:1px solid black" width="100%"><BR><BR>

1. Drag "_id" to the "Arc" field, making sure that the aggregate is by "COUNT":<BR>
<img src="/assets/images/IdDrag.png" style="border:1px solid black" width="100%"><BR><BR>

1. To show how many boardings are compliant vs. non-compliant, let's create a calculated field. Select "+ Add Field":<BR>
<img src="/assets/images/AddField.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select "CALCULATED" in the upper right of the popup box, set the Field Name to "isCompliant", and set the Value Expression to check if the boarding is compliant or not:<BR>
`{ $cond: { if: {$eq: ['$inspection.summary.safetyLevel.level','Green']},` <BR>
`then: "Compliant",` <BR>
`else: "Non-compliant" } }` <BR>
and then select "Save Field":<BR>
<img src="/assets/images/AddCalculatedField.png" style="border:1px solid black" width="100%"><BR><BR>

1. Drag the new isCompliant field to the Label, making sure the SORT BY menu is set to "VALUE":<BR>
<img src="/assets/images/DragIsCompliant.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Customize", toggle "Custom Color Palatte" to be on, and drag the colors to the proper ordering so that Non-compliant is red and Compliant is green:<BR>
<img src="/assets/images/ChangeColors.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Save and Close"

1. On your dashboard, mouse over the chart until you see the ellipses. Select the ellipses and select "Embed Chart":
<img src="/assets/images/ClickBCEmbedMenu.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Authenticated" section, make sure "Enabled authenticated access" is set to "ON", and set the User Specified Filters to "date" and select the green "SAVE" button:<BR>
<img src="/assets/images/SetDateFilter.png" style="border:1px solid black" width="100%"><BR><BR>

1. Copy the Chart ID:<BR>
<img src="/assets/images/CopyBDChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Close" to close the "Embed Chart" window.<BR><BR>

1. Paste the Chart ID into your web application's src/config.js file under "boarding-compliance".<BR><BR><BR><BR>

Finally, the map!
