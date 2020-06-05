---
layout: post
title: "5. Setup stitch-cli"
date: 2020-05-09 05:00:00 -0400
categories: build
---

1. stitch-cli setup
   1. Install stitch-cli - follow the instructions for manual install or `npm` install at <A HREF="https://docs.mongodb.com/stitch/deploy/stitch-cli-reference/" _target="blank">https://docs.mongodb.com/stitch/deploy/stitch-cli-reference</A><BR><BR>
   1. Connect your commandline with Realm using `stitch-cli login` and the values from the template for "API Public Key" and "API Private Key":<BR>
   - `stitch-cli login --api-key="API_Public_Key" --private-api-key="API_Private_Key"`<BR><BR>
      cloud-dev users add `--base-url=https://realm-dev.mongodb.com`<BR><BR>
      It has worked when the output is <BR>`you have successfully logged in as PUBLIC_API_KEY`<BR><BR>

   1. Use stitch-cli to add a secret called "AWS-secret-key". If you are connecting your instance with an external AWS environment, add your AWS secret key as the `--value` in this command. If you are NOT connecting your instance with AWS, you STILL need to run this command but `--value` can be set to any string. 
   You will put your Realm App ID from the template as the value of --app-id:<BR>
      `stitch-cli secrets add --app-id=wildaidapp-xxxxx --name=AWS-secret-key --value=my-aws-secret-api-key`<BR><BR>
      cloud-dev users add `--base-url=https://realm-dev.mongodb.com`<BR><BR>
      It works when the output is <BR>`New secret created: AWS-secret-key`<BR><BR>

Now you are all set up to import the Realm code!
