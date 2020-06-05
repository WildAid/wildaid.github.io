---
layout: post
title: "7. Connect Realm With Data"
date: 2020-05-09 07:00:00 -0400
categories: build
---

You have imported your Realm app!  Now, let's create a Realm user...

1. Add a Realm user - this will be the global administrative user who logs into your application.
      1. In the Realm UI, click on Users under Data Access & Security, and then click on the green "Add New User" button.
        <img src="/assets/images/Add_Realm_User.png" style="border:1px solid black" width="100%"><BR><BR>
      1. Add an email address as the username, and add a password. Write these down in the template under "App Admin username" and "App Admin password". As the global administrative login, you can use your email or whatever login you want for the global administrative user. The email is only used if you forget your password:
        <img src="/assets/images/Realm_User_Details.png" style="border:1px solid black" width="100%"><BR><BR>
      1. Copy the Realm User ID and paste in the template under "Realm User ID"
        <img src="/assets/images/Copy_Realm_User_ID.png" style="border:1px solid black" width="100%"><BR><BR>
1. <A HREF="https://docs.mongodb.com/manual/tutorial/insert-documents/">Insert a new document</A> to the wildaid.User collection (using Compass, mongo shell or code studio integration). Set the email and RealmUserID with the "App Admin user" and "Realm User ID", and set the agency and first and last names as appropriate. Here's an example:<BR>
`use wildaid;`<BR>
`db.User.insertOne({`<BR>
`"email":"sheeri.cabral@mongodb.com",`<BR>
`"RealmUserID": {"$oid":"xxxxxxxxxxxxxxxxxxxxx"},`<BR>
`"agency": {"name":"MongoDB", "admin":false},`<BR>
`"global": {"admin":true},`<BR>
`"name": {"first":"Sheeri", "last":"Cabral"}`<BR>
`})`<BR>
and here's a template with empty fields for copy/pasting:<BR>
`use wildaid;`<BR>
`db.User.insertOne({`<BR>
`"email":"",`<BR>
`"RealmUserID": {"$oid":""},`<BR>
`"agency": {"name":"", "admin":false},`<BR>
`"global": {"admin":true},`<BR>
`"name": {"first":"", "last":""}`<BR>
`})`


Fantastic!
