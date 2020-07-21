---
layout: post
title: "2. Data Import"
date: 2020-06-10 02:01:00 -0400
categories: build
---

Now that you've created your Atlas database, import the sample dataset using the `mongorestore` commandline utility:

1. Get the sample data
   1.  Get the code from <A HREF="https://github.com/WildAid/o-fish-realm" target="_blank">https://github.com/WildAid/o-fish-realm</A><BR>
   `git clone https://github.com/WildAid/o-fish-realm.git`<BR>OR<BR><A HREF="https://github.com/WildAid/o-fish-realm/archive/main.zip">Download and extract the code</A><BR><BR>
   1. Go into the o-fish-realm directory, "o-fish-realm" if you did a git clone in the previous step, or "o-fish-realm-main" if you downloaded and extracted the code. The directory should have 4 items in it:<BR>
`LICENSE README.md WildAidDemo WildAidSampleBackup`<BR>

   1. Note the path to the directory WildAidSampleBackup. Put it in the "Path to sample data" section of the template. <BR>
Example: `/Users/sheeri/o-fish-realm/WildAidSampleBackup`<BR><BR>
   1. Note the path to the directory WildAidDemo, and put it in the "Path to Realm code" section of the template.<BR>
Example: `/Users/sheeri/o-fish-realm/WildAidDemo`<BR><BR>

1. Get connection string
   1. Click "Command Line Tools" in the Atlas cluster UI:
<img src="/assets/images/cltools.png" style="border:1px solid black" width="100%"><BR><BR>
   1. Copy the mongorestore connection string:
<img src="/assets/images/Copy_mongorestore_string.png" style="border:1px solid black" width="100%"><BR><BR>

1. In a terminal window, paste the mongorestore connection string - modify the username and password, and then paste the "Path to sample data" at the end.<BR>
Here's the whole string, make sure to replace what's in all capital letters:<BR>
   - `mongorestore --host OFISH-shard-0/ofish-shard-00-00-xxxxx.mongodb.net:27017,ofish-shard-00-01-xxxxx.mongodb.net:27017,ofish-shard-00-02-xxxxx.mongodb.net:27017 --ssl --username USERNAME --password PASSWORD --authenticationDatabase admin PATH_TO_BACKUP`<BR>
Example:<BR>
   - `mongorestore --host OFISH-shard-0/ofish-shard-00-00-xxxxx.mongodb.net:27017,ofish-shard-00-01-xxxxx.mongodb.net:27017,ofish-shard-00-02-xxxxx.mongodb.net:27017 --ssl --username admin --password elided --authenticationDatabase admin /Users/sheeri/wildaid_demo/o-fish-realm/WildAidSampleBackup`<BR>
   When it is successful, you will see a message like:<BR>
   `3001 document(s) restored successfully. 0 document(s) failed to restore.`<BR><BR>

1. Verify with Data Explorer
   1. Go to <code>Collections</code> in the Atlas UI:
<img src="/assets/images/Atlas_Data_Explorer.png" style="border:1px solid black" width="100%"><BR><BR>

   1. Click on the BoardingReports collection and verify there are records: 
<img src="/assets/images/Verify_Data.png" style="border:1px solid black" width="75%"><BR><BR>

Great work, now you're ready to hook up Realm...
