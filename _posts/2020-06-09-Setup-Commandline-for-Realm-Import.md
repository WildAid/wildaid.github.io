---
layout: post
title: "5. Setup the commandline interface to import the Realm app code"
date: 2020-05-09 05:00:00 -0400
categories: build
---

The commandline interface to import the Realm app code is called "stitch-cli". We will set this up in this step, then import all the Realm code in the next step.

1. stitch-cli setup
   1. Install stitch-cli - follow the instructions for manual install or `npm` install at <A HREF="https://docs.mongodb.com/stitch/deploy/stitch-cli-reference/" target="_blank">https://docs.mongodb.com/stitch/deploy/stitch-cli-reference</A><BR><BR>
   1. Connect your commandline with Realm using `stitch-cli login` and the values from the template for "API Public Key" and "API Private Key":<BR>
   - `stitch-cli login --api-key="API_Public_Key" --private-api-key="API_Private_Key"`<BR><BR>
      It has worked when the output is <BR>`you have successfully logged in as PUBLIC_API_KEY`<BR><BR>

   1. Use stitch-cli to add a secret called "AWS-secret-key". If you are connecting your instance with an external AWS environment, add your AWS secret key as the `--value` in this command. If you are NOT connecting your instance with AWS, you STILL need to run this command but `--value` can be set to any string. <BR>
   You will put your Realm App ID from the template as the value of --app-id:<BR>
      `stitch-cli secrets add --name=AWS-secret-key --value=my-aws-secret-api-key --app-id=REALM_APP_ID`<BR><BR>
      It works when the output is <BR>`New secret created: AWS-secret-key`<BR><BR>

Now you are all set up to import the Realm code!
