---
layout: post
title: "6. Import Realm Code"
date: 2020-05-09 06:00:00 -0400
categories: build
---

Now it's time to import the Realm code!


1. In the template, you have a field called "Path to Realm code". Go to that directory - you should be inside a directory called WildAidDemo.<BR><BR>
      (if you need to, download and extract <A HREF="/assets/files/WildAidRealm.tar.gz">WildAidRealm.tar.gz</A>.)<BR><BR>
1. Edit `stitch.json` change "name" to your "Realm App ID"<BR><BR>
1. Edit `services/RealmSync/config.json services/mongodb-atlas/config.json`<BR> and change the value of "ClusterName" to your "Atlas Cluster Name"<BR><BR>
1. If you are not using AWS, skip this step. If you are, edit the following files and fill in all the relevant details:<BR>
 `values/awsRegion.json values/destinationEmailAddress.json values/sourceEmailAddress.json`<BR><BR>
1. If you are not using AWS, skip this step. If you are, set accessKeyID if using AWS in the file: <BR>
  `services/AWS/config.json`<BR><BR>
1. Do the import, confirm with 'y' when prompted to confirm changes. You will need your Realm App ID:<BR>
  `stitch-cli import --app-id=wildaidapp-xxxxx --strategy=replace --include-dependencies` <BR><BR>
  cloud-dev users add `--base-url=https://realm-dev.mongodb.com`<BR><BR>
1. Verify the code got imported by going to the Realm App and clicking "Functions" on the left-hand side. You should see several functions, as below:
  <img src="/assets/images/Functions.png" style="border:1px solid black" width="100%"><BR><BR>


You have successfully set up a Realm serverless application! You may get emails like "A Database Trigger has been Suspended", do not worry about that for now. It's time to connect Realm to your data by creating a user!
