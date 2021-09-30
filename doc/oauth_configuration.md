# OAuth Configuration

This document explains how to set up OAuth Configuration in MPS. This will permit to specify that we need to pass a token when connecting to a specific model server. When we do that we will ask the user to login in a browser window. We will then go through the OAuth flow, get the token and pass it in calls to the Model Server (or a proxy to the Model Server).

We select Settings/Preferences and navigate to ModelixOAuthConfiguration. We can add an entry. We will specify the URL of the model server's proxy we want to connect to and then we specify the details of the OAuth configuration. The URL should be exactly the same, including the trailing slash.

For example, to use Google OAuth we select: 

* Flow Type "AuthorizationCode"
* Base URL https://accounts.google.com/o/oauth2/v2/auth
* Client ID <client id of your application>
* Scope https://www.googleapis.com/auth/userinfo.email
* Token Verification URL https://www.googleapis.com/oauth2/v3/userinfo

If we instead want to connect to an instance of Identity Server we will instead select:

* Flow Type "AuthorizationCodePKCE"
* Base URL <base url of our identity server>/connect/authorize
* Client ID <client id of your application>
* Scope <any scope we want to use>
* Token Verification URL <base url of our identity server>/connect/token	

We then select Apply.

We should now go to the ModelServer with the same URL. If we add it we will be asked to login right away. If instead the ModelServer was already existing we can select the action "Get Authorization Token" to ensure the token is loaded.
