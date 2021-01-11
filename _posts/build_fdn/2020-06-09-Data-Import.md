---
layout: post
title: "2. Data Import"
date: 2020-06-09 02:00:00 -0400
categories: foundation
site: build
---

Now that you've created your Atlas database, import the sample dataset using the `mongorestore` commandline utility:

1. Get the sample data

   1. Get the code from <A HREF="https://github.com/WildAid/o-fish-realm" target="_blank">https://github.com/WildAid/o-fish-realm</A>
   ```bash
   git clone https://github.com/WildAid/o-fish-realm.git
   ```
   OR<BR><A HREF="https://github.com/WildAid/o-fish-realm/archive/main.zip">Download and extract the code</A><BR><BR>
   1. Go into the o-fish-realm directory, "o-fish-realm" if you did a git clone in the previous step, or "o-fish-realm-main" if you downloaded and extracted the code. The directory should have at least these 3 items: **README.md**, **WildAidDemo**, and **WildAidSampleBackup**.
   
   1. Note the path to the directory WildAidSampleBackup. Put it in the "Path to sample data" section of the template. <BR>
Example: `/Users/sheeri/o-fish-realm/WildAidSampleBackup`<BR><BR>
1. Note the path to the directory WildAidDemo, and put it in the "Path to Realm code" section of the template.<BR>
   Example: `/Users/sheeri/o-fish-realm/WildAidDemo`<BR><BR>
   
1. Get connection string
   1. Click CONNECT in the cluster itself (or as previously on the view that shows you all the clusters for the project):
<img src="/assets/images/CONNECT.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Click on Connect using MongoDB Shell, then "I have the mongo shell installed "
<img src="/assets/images/Click_Already_Have.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Copy the connection string
<img src="/assets/images/Copy_Connection_String.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Click "Close"<BR><BR>
   1. Paste the connection string into the "Atlas Cluster connection string" in your template.<BR><BR>

1. In a terminal window, use the mongorestore utility to import the data you got in the first step. use the `mongorestore` utility and the "Path to sample data", and the "Atlas Cluster connection string". Modify the connection string - just after `mongodb+srv://` you should put in the "Atlas Cluster Admin username" from the template, followed by @ and then the rest of the mongodb+srv link. The whole string, replace what's in all capital letters:
   ```bash
mongorestore --drop --uri "mongodb+srv://USERNAME@REST_OF_CONNECTION_STRING" PATH_TO_BACKUP
   ```

   Example:
   ```bash
mongorestore --drop --uri "mongodb+srv://admin@ofish-xxxxx.mongodb.net/" /Users/sheeri/wildaid_demo/o-fish-realm/WildAidSampleBackup
   ```
   
   **Note**, if you run the `mongorestore` command from inside of the **o-fish-realm** directory, then you can use a relative path for **PATH_TO_BACKUP**, like this:
   ```bash
mongorestore --drop --uri "mongodb+srv://admin@ofish-xxxxx.mongodb.net/" ./WildAidSampleBackup
   ```
   
   When it is successful, you will see a message like:<BR>
   *"6117 document(s) restored successfully. 0 document(s) failed to restore."*<BR><BR>


1. Verify with Data Explorer
   1. Go to <code>Collections</code> in the Atlas UI:
<img src="/assets/images/Atlas_Data_Explorer.png" style="border:1px solid black" width="100%"><BR><BR>

   1. Click on the BoardingReports collection and verify there are records: 
<img src="/assets/images/Verify_Data.png" style="border:1px solid black" width="75%"><BR><BR>

1.  Add fulltext search index - Click on the "Search" tab, and then "Create Search Index":
        <img src="/assets/images/Search_Index.png" style="border:1px solid black" width="100%"><BR><BR>
    1. Click "Create Index" to create the default fulltext search index, mapping every field.
        <img src="/assets/images/Create_Search_Index.png" style="border:1px solid black" width="100%"><BR><BR>
    1. Click "Close" and your index will build in the background
Great work, now you're ready to hook up Realm...
