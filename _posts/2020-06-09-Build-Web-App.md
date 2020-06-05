---
layout: post
title: "9. Build Web App"
date: 2020-05-09 09:00:00 -0400
categories: build
---

Build the web app:
1. Get the code<BR>
   1.  Get the code from <A HREF="https://github.com/WildAid/o-fish-web">https://github.com/WildAid/o-fish-web</A><BR>
   `git clone https://github.com/WildAid/o-fish-web.git`<BR><BR>
   for now, <A HREF="/assets/files/ocean-watch-web.tar.gz">click here</A>
1. Go into the o-fish-web directory
   cd `o-fish-web`
1. edit `src/.env/config.js`:
   appName is your Realm App Name
   stitchAppId is the Realm App ID
   stitchBaseUrl should be https://realm.mongodb.com
1. On commandline, run:
   `npm run build`
1. In the Stitch UI in your browser, click on "Hosting" on the left-hand side under "MANAGE"<BR>
<img src="/assets/images/Hosting.png" style="border:1px solid black" width="70%"><BR><BR>
1. Enable hosting by clicking the big green button:<BR>
<img src="/assets/images/Enable_Hosting.png" style="border:1px solid black" width="50%"><BR><BR>
1. You will be sent back to this page:<BR>
<img src="/assets/images/Drag_Files_Here.png" style="border:1px solid black" width="100%"><BR><BR>
1. Drag and drop the contents of the build folder onto the Stitch window. There should be about 10 files and folders in the directory when you are done. It is OK to overwrite existing files.<BR>
<img src="/assets/images/Files_Dragged.png" style="border:1px solid black" width="75%"><BR><BR>
1. Run Actions/Flush CDN Cache, click "Flush Cache" when prompted.<BR>
<img src="/assets/images/Flushed_Cache.png" style="border:1px solid black" width="75%"><BR><BR>
1. Make note of the URL on the Hosting page, this is your website! Paste it to the "URL" field in the template<BR>
<img src="/assets/images/URL.png" style="border:1px solid black" width="75%"><BR><BR>

Proceed to the next step when the blue bar no longer appear saying "Your site is in the process of being created, which may take up to 15 minutes."


