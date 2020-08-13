---
layout: post
title: "6. Import Realm Code"
date: 2020-06-09 06:00:00 -0400
categories: foundation
site: build
---

Now it's time to import the Realm code!


1. In the template, you have a field called "Path to Realm code". Go to that directory - you should be inside a directory called WildAidDemo.<BR><BR>
1. Edit `config.json` change "name" to your "Realm App Name"<BR><BR>
1. Edit `services/RealmSync/config.json services/mongodb-atlas/config.json`<BR> and change the value of "ClusterName" to your "Atlas Cluster Name"<BR><BR>
1. If you are not using AWS, skip this step. If you are, edit the following files and fill in all the relevant details:<BR>
 `values/awsRegion.json values/destinationEmailAddress.json values/sourceEmailAddress.json`<BR><BR>
1. If you are not using AWS, skip this step. If you are, set accessKeyID if using AWS in the file: <BR>
  `services/AWS/config.json`<BR><BR>
1. Do the import, confirm with 'y' when prompted to confirm changes. You will paste your Realm App ID into --app-id:<BR>
  `realm-cli import --strategy=replace --include-dependencies --app-id=REALM_APP_ID` <BR><BR>
1. Verify the code got imported by going to the Realm App and clicking "Functions" on the left-hand side. You should see several functions, as below:
  <img src="/assets/images/Functions.png" style="border:1px solid black" width="100%"><BR><BR>


You have successfully set up a Realm serverless application! You may get emails like "A Database Trigger has been Suspended", do not worry about that for now. <BR><BR>

It's time to connect Realm to your data by creating a user!
