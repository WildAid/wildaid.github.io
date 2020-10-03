---
layout: post
title: "Build Web App"
date: 2020-06-09 09:00:00 -0400
categories: web
site: build
---

Build the web app:<BR>
1. Get the code<BR>
   1.  Get the code from <A HREF="https://github.com/WildAid/o-fish-web">https://github.com/WildAid/o-fish-web</A><BR>
   `git clone https://github.com/WildAid/o-fish-web.git`<BR><BR>OR<BR><A HREF="https://github.com/WildAid/o-fish-web/archive/main.zip">Download and extract the code</A><BR><BR>
1. Go into the o-fish-web directory (if you used git clone) or the o-fish-web-main directory (if you downloaded the code)<BR><BR>
1. edit `src/config.js` and paste:<BR>
 Realm App ID into the realmAppId field<BR>
 'mongodb-atlas' into the realmServiceName field<BR>
 'wildaid' into the database field<BR><BR>
1. On commandline, run:<BR>
   `npm install`<BR><BR>

<H2>To build and host the web application locally - recommended for sandbox use and testing</H2>
On commandline run:<BR>
`npm start`<BR>
The site will be hosted at http://localhost:3000 - you can skip the rest of this page and proceed to <A HREF="/web/2020/06/09/Test-Web-App.html">test your changes</A>.

<H2>To build the web application for hosting in Realm - recommended for a more permanent instance, or repeated testing</H2>
1. On commandline, run:<BR>
   `npm run build`<BR>
   When it completes, a "build" directory will be made, with the following files and "static" directory:<BR>
`asset-manifest.json`<BR>
`index.html`<BR>
`logo192.png`<BR>
`manifest.json`<BR>
`precache-manifest.c369024c97162a63d34202304b2410db.js`<BR>
`robots.txt`<BR>
`service-worker.js`<BR>
`static`<BR><BR>

1. In the Realm UI in your browser, click on "Hosting" on the left-hand side under "MANAGE"<BR>
<img alt="To click on Hosting" src="/assets/images/Hosting.png" style="border:1px solid black" width="70%"><BR><BR>
1. You should see this page:
<img alt="page image" src="/assets/images/Drag_Files_Here.png" style="border:1px solid black" width="100%"><BR><BR>
1. Upload everything inside the build folder by dragging and dropping the files and static directory. The green UPLOAD FILES button does not support uploading a directory like the "static" directory. It is OK to overwrite existing files. When complete, it should look like this:<BR>
<img alt="image after uploading all files" src="/assets/images/Files_Dragged.png" style="border:1px solid black" width="75%"><BR><BR>
1. Run Actions/Flush CDN Cache, click "Flush Cache" when prompted.<BR>
<img alt="after clicking Run" src="/assets/images/Flushed_Cache.png" style="border:1px solid black" width="75%"><BR><BR>
1. Make note of the URL on the Hosting page, this is your website! Paste it to the "URL" field in the template<BR>
<img alt="image of the Hosting Page" src="/assets/images/URL.png" style="border:1px solid black" width="75%"><BR><BR>

If you have a blue bar that says: "Your site is in the process of being created, which may take up to 15 minutes." then wait until that is gone before proceeding.


