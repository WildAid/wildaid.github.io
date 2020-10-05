---
layout: post
title: "Troubleshooting Charts"
date: 2020-06-14 01:00:00 -0400
categories: charts
site: build
---

At some point, your chart may not load. Here is a list of ways to troubleshoot the issue.<BR><BR>

You may see a completely blank box where your chart is supposed to be, or you may see something like this:<BR>
<img src="/assets/images/SadFaceChart.png" alt="Example of an error message - 'unable to retrieve data.'" style="border:1px solid black" ><BR><BR>

If you see the "Last refresh failed. Retry?" text, the word "Retry" is a web link to the chart. You can look at that web URL to see if there is anything obvious as to why there is a problem - for example, your charts URL does not match the baseUrl for your charts.<BR><BR>

If that did not fix the issue, you need to find what the error actually is. To do that, <A HREF="https://balsamiq.com/support/faqs/browserconsole/">open your web browser's console</A>.<BR><BR>

You will see an error like:<BR>
`Error loading data for this chart (error code: X). EXPLANATION HERE. See https://dochub.mongodb.org/core/charts-embedding-error-codes for details.`<BR><BR>

You can see the full list of errors at <A HREF="https://dochub.mongodb.org/core/charts-embedding-error-codes">https://dochub.mongodb.org/core/charts-embedding-error-codes</A> of course. <BR><BR>Some common issues and their fixes are:<BR>
1. `Error loading data for this chart (error code: 7). User filter is not allowed.`<BR>
This usually means you did not put in the filter. Check the Embedding menu for the chart and make sure the "date" filter is available. If not, make sure to put the date in AND select the green SAVE button:
<img src="/assets/images/SetDateFilter.png" alt="How to select the 'date' filter and save changes." style="border:1px solid black" width="100%"><BR><BR>

1. `Error loading data for this chart (error code: 3). Embedding not enabled on this chart.`<BR>
This usually means your baseUrl or chart code is incorrect.<BR><BR>

1. `Error loading data for this chart (error code: 18). Client ID doesn’t match provider.`<BR>
This usually means something's wrong with your Realm Sync and you should re-add the Authentication Provider <A HREF="/charts/2020/06/12/Embed-Boardings-List.html">starting with step 2 here.</a><BR><BR>

1. `Error loading data for this chart (error code: 2). Chart not found.`<BR>
This usually means your baseUrl or chart code is incorrect.<BR><BR>

If you are still stuck, search or ask in the <a href="https://developer.mongodb.com/community/forums/tag/o-fish/">MongoDB Community Forum posts with the O-FISH tag</a>.
