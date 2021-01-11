---
layout: post
title: "Build Web App"
date: 2020-06-09 09:00:00 -0400
categories: web
site: build
---

Build the web app:<BR>
1. Get the code<BR>
   1.  Get the code from <A HREF="https://github.com/WildAid/o-fish-web">https://github.com/WildAid/o-fish-web</A>
   ```bash
git clone https://github.com/WildAid/o-fish-web.git
   ```
OR<BR><A HREF="https://github.com/WildAid/o-fish-web/archive/main.zip">Download and extract the code</A><BR><BR>
1. Go into the o-fish-web directory (if you used git clone) or the o-fish-web-main directory (if you downloaded the code)<BR><BR>
1. Copy `src/config.js.tmpl` to `src/config.js`
1. Edit `src/config.js` and paste:<BR>
 'Realm App ID' into the **realmAppId** field<BR>
 'mongodb-atlas' into the **realmServiceName** field<BR>
 'wildaid' into the **database** field<BR><BR>
1. On commandline, run:<BR>
   ```bash
npm install
   ```

{% include build_web.md %}



