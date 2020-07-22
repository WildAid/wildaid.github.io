---
layout: post
title: "Create Boarding List Chart"
date: 2020-06-12 02:00:00 -0400
categories: build
---

1. On your dashboard, click the green "Add Chart" button:
<img src="/assets/images/AddChart.png" style="border:1px solid black" width="100%"><BR><BR>

1. Choose the Data Source of "wildaid.BoardingReports" from the pulldown menu:
<img src="/assets/images/ChooseBRDataSource.png" style="border:1px solid black" width="100%"><BR><BR>

1. The List of Boardings is a table of boarding details, so choose the "Chart Type" of "Table" from the pulldown menu:
<img src="/assets/images/TableChartType.png" style="border:1px solid black" width="100%"><BR><BR>

1. Add a title of "Boarding Details" to your chart:
<img src="/assets/images/BDTitle.gif" style="border:1px solid black" width="100%"><BR><BR>

1. Drag and drop the "date" field to the Groups section, and turn binning off:
<img src="/assets/images/date1.gif" style="border:1px solid black" width="100%"><BR><BR>

1. Customize the date field by clicking on "Customize". Change the label to have a capitalized first letter - "Date" - and add in the time:
<img src="/assets/images/date2.gif" style="border:1px solid black" width="100%"><BR><BR>

1. Go back to the "Encode" section and drag the following fields to "Groups":<BR>
vessel -> name<BR>
vessel -> permitNumber<BR>
captain -> name<BR>
inspection -> summary -> safetyLevel -> level<BR>
<img src="/assets/images/Groups.gif" style="border:1px solid black" width="100%"><BR><BR>

1. Customize the labels of each of the fields you just dragged:<BR>
vessel.name - Vessel Name<BR>
vessel.permitNumber - Permit #<BR>
captain.name - Captain<BR>
inspection.summary.safetyLevel.level - Risk<BR>
<img src="/assets/images/Labels.gif" style="border:1px solid black" width="100%"><BR><BR>

1. Drag this field to the "Values" section:
inspection -> summary -> violations -> disposition
<img src="/assets/images/count.gif" style="border:1px solid black" width="100%"><BR><BR>

1. Choose the Array Reduction by "Array Length":
<img src="/assets/images/ArrayReduction.gif" style="border:1px solid black" width="100%"><BR><BR>



