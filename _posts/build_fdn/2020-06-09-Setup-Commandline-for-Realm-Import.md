---
layout: post
title: "5. Setup the commandline interface to import the Realm app code"
date: 2020-06-09 05:00:00 -0400
categories: foundation
site: build
---

The commandline interface to import the Realm app code is called "realm-cli". We will set this up in this step, then import all the Realm code in the next step.

1. realm-cli setup
   1. Install realm-cli - follow the instructions for manual install or `npm` install at <A HREF="https://docs.mongodb.com/realm/deploy/realm-cli-reference/" target="_blank">https://docs.mongodb.com/realm/deploy/realm-cli-reference</A><BR><BR>
   1. Connect your commandline with Realm using `realm-cli login` and the values from the template for "API Public Key" and "API Private Key":<BR>
   ```bash
realm-cli login --api-key="API_Public_Key" --private-api-key="API_Private_Key"
   ```
   When successful, you will see this message:<BR>
   *"You have successfully logged in as PUBLIC_API_KEY"*

   1. Use realm-cli to add a secret called "AWS-secret-key". If you are connecting your instance with an external AWS environment, add your AWS secret key as the `--value` in this command. If you are NOT connecting your instance with AWS, you STILL need to run this command but `--value` can be set to any string. <BR>
   You will put your Realm App ID from the template as the value of --app-id:
   ```bash
   realm-cli secrets add --name=AWS-secret-key --value=my-aws-secret-api-key --app-id=REALM_APP_ID
   ```
   It works when the output is:<BR>
   *"New secret created: AWS-secret-key"*<BR><BR>

Now you are all set up to import the Realm code!
