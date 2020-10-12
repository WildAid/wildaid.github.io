---
layout: post
title: "Create Boarding List Chart"
date: 2020-06-12 02:00:00 -0400
categories: charts
site: build
---

1. On your dashboard, select the green "Add Chart" button:
<img src="/assets/images/AddChart.png" alt="" style="border:1px solid black" width="100%"><BR><BR>

1. Choose the Data Source of "wildaid.BoardingReports" from the pulldown menu:
<img src="/assets/images/ChooseBRDataSource.png" alt="Choose the Data Source" style="border:1px solid black" width="100%"><BR><BR>

1. The List of Boardings is a table of boarding details, so choose the "Chart Type" of "Text" from the pulldown menu:
<img src="/assets/images/TableChartType.png" alt="How to select &quot;Text&quot; as the Chart Type" style="border:1px solid black" width="100%"><BR><BR>

1. Add a title of "Boarding Details" to your chart:
<img src="/assets/images/BDTitle.gif" alt="" style="border:1px solid black" width="100%"><BR><BR>

1. Drag and drop the "date" field to the Groups section, and turn binning off:
<img src="/assets/images/Date1.gif" alt="How to add date to the Group section" style="border:1px solid black" width="100%"><BR><BR>

1. Customize the date field by selecting on "Customize" and then "date". Override the label and give it a capitalized first letter - "Date" - and add in the time - you can choose any format, this gif chooses "15:23":
<img src="/assets/images/Date2.gif" alt="How to customize date and add time" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Encode" to go back to the encoding section:
<img src="/assets/images/Encode.png" alt="" style="border:1px solid black" width="70%"><BR><BR>

1. Drag the following fields to "Groups":<BR>
vessel -> name<BR>
vessel -> permitNumber<BR>
captain -> name<BR>
inspection -> summary -> safetyLevel -> level<BR>
<img src="/assets/images/Groups.gif" alt="How to group fields" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Customize" and "Label Override" to change the label name for the fields you added in the previous step:<BR>
vessel.name - Vessel Name<BR>
vessel.permitNumber - Permit #<BR>
captain.name - Captain<BR>
inspection.summary.safetyLevel.level - Risk<BR>
This is what the headings should look like when this step is done:
<img src="/assets/images/Labels.png" alt="Customized lable name of each field" style="border:1px solid black" width="100%"><BR><BR>

1. Select "Encode" and drag to the "Values" section the field:
inspection -> summary -> violations -> disposition
<img src="/assets/images/disposition.png" alt="How to add &quot;disposition&quot; field under &quot;Values&quot; section" style="border:1px solid black" width="100%"><BR><BR>

1. Choose the Array Reduction by "Array Length":
<img src="/assets/images/ArrayReduction.png" alt="" style="border:1px solid black" width="100%"><BR><BR>

1. Go to the "Customize" section and override the Label to say "# Violations": 
<img src="/assets/images/VioLabel.png" alt="How to customize the label name" style="border:1px solid black" width="100%"><BR><BR>

1. Select the "Save and Close" button
<img src="/assets/images/CloseSave.png" alt="" style="border:1px solid black" width="100%"><BR><BR>

Congrats! You have made your chart! 
