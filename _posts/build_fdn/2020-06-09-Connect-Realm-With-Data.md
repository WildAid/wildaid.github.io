---
layout: post
title: "7. Connect Realm With Data"
date: 2020-06-09 07:00:00 -0400
categories: foundation
site: build
---

You have imported your Realm app!  Now, let's create a Realm user...

1. Add a Realm user - this will be the global administrative user who logs into your application.
      1. In the Realm UI, click on 'App Users' under Data Access, and then click on the green "Add New User" button.
        <img alt="adding new user button location" src="/assets/images/Add_Realm_User.png" style="border:1px solid black" width="100%"><BR><BR>
      1. Add an email address as the username, and add a password. Write these down in the template under "App Admin username" and "App Admin password". As the global administrative login, you can use your email or whatever login you want for the global administrative user. The email is only used if you forget your password:
        <img alt="adding information for creating user" src="/assets/images/Realm_User_Details.png" style="border:1px solid black" width="100%"><BR><BR>
      1. Copy the Realm User ID and paste in the template under "Realm User ID"
        <img src="/assets/images/Copy_Realm_User_ID.png" alt="using realm id instructions" style="border:1px solid black" width="100%"><BR><BR>
1. <A HREF="https://docs.mongodb.com/manual/tutorial/insert-documents/">Insert a new document</A> to the wildaid database. You will be inserting into the User collection using Compass, mongo shell or code studio integration. <BR><BR>
The User collection does not exist, so you will need to create it in Compass. In mongoshell and your code studio integration, the collection is automatically created. <BR><BR>
Set the email and realmUserID with the "App Admin user" and "Realm User ID", set the agency to "WildAid" (for testing) and first and last names as appropriate. Here's an example using mongoshell:
<BR><BR>
`$ mongo "mongodb+srv://ofish-xxxx.mongodb.net/wildaid" --username admin`<BR>
`use wildaid;`<BR>
`db.User.insertOne(`<BR>
`{"email":"sheeri.cabral@mongodb.com",`<BR>
`"name": {"first":"Sheeri", "last":"Cabral"},`<BR>
`"realmUserID": "xxxxxxxxxxxxxxxxxxxxx",`<BR>
`"agency": {"name":"WildAid", "admin":false},`<BR>
`"global": {"admin":true}`<BR>
`})`<BR>
and here's a template with empty fields for copy/pasting:<BR>
`use wildaid;`<BR>
`db.User.insertOne(`<BR>
`"email":"",`<BR>
`"name": {"first":"", "last":""},`<BR>
`"realmUserID": "",`<BR>
`"agency": {"name":"", "admin":false},`<BR>
`"global": {"admin":true}`<BR>
`})`


Fantastic!
