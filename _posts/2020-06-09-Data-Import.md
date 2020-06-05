---
layout: post
title: "2. Data Import"
date: 2020-05-09 02:00:00 -0400
categories: build
---

Now that you've created your Atlas database, import the sample dataset using the `mongorestore` commandline utility:

1. Get the sample data
   1.  Get the code from <A HREF="https://github.com/WildAid/o-fish-realm">https://github.com/WildAid/o-fish-realm</A><BR>
   `git clone https://github.com/WildAid/o-fish-realm.git`<BR><BR>
   For now, download and extract <A HREF="/assets/files/CodeForGoodDataSet.tar.gz">CodeForGoodDataSet.tar.gz</A>.<BR><BR>
   1. Go into the o-fish-realm directory:<BR>
   `cd o-fish-realm`<BR><BR>
   1. Note the path to the directory CodeForGoodbackup, which contains a directory called "wildaid". Put it in the "Path to sample data" section of the template.<BR><BR>
   1. Note the path to the directory WildAidDemo,and put it in the "Path to Realm code" section of the template.<BR><BR>

1. Get connection string
   1. Click CONNECT in the cluster itself (or as previously on the "all clusters" page for the project):
<img src="/assets/images/CONNECT.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Click on Connect using MongoDB Shell, then "I have the mongo shell installed "
<img src="/assets/images/Click_Already_Have.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Copy the connection string
<img src="/assets/images/Copy_Connection_String.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Click "Close"<BR><BR>
   1. Paste the connection string into the "Atlas Cluster connection string" in your template.<BR><BR>

1. In a terminal window, use the mongorestore utility to import the data you got in the first step. use the `mongorestore` utility and the "Path to sample data", and the "Atlas Cluster connection string". Modify the connection string - just after `mongodb+srv://` you should put in the "Atlas Cluster Admin username" from the template, followed by @ and then the rest of the mongodb+srv link - so it looks something like this:<BR>
   - `mongorestore --drop --uri "mongodb+srv://admin@oceanwatchdata-xxxxx.mongodb.net/test" /PATH/TO/CodeForGoodbackup`<BR>
   When it is successful, you will see a message like:<BR>
   `17542 document(s) restored successfully. 0 document(s) failed to restore.`<BR><BR>

1. Verify with Data Explorer
   1. Go to <code>Collections</code> in the Atlas UI:
<img src="/assets/images/Atlas_Data_Explorer.png" style="border:1px solid black" width="100%"><BR><BR>

   1. Click on the BoardingReports collection and verify there are records: 
<img src="/assets/images/Verify_data.png" style="border:1px solid black" width="100%"><BR><BR>

Great work, now you're ready to hook up Realm...
