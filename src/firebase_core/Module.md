Connects to Firebase from Ballerina. 

# Package Overview
The Firebase allows you to create Firebase configured app from credentials given from firebase.

## Compatibility
|                    |    Version     |  
|:------------------:|:--------------:|
| Ballerina Language |   1.0.0        |
| Firebase           |   any          |

## Sample

Import the `hirantha/firebase_core` package into the Ballerina project.

```ballerina
import hirantha/firebase_core;
```
    
The Firebase App has be instantiated using the Firebase configuration json issue by the firebase web app.

**Obtaining project configuration json**

1. Sign in to https://console.firebase.google.com/.
2. Click **Add Project** and necessary information about the project.
3. Agree to the terms and click **Create Project**.
4. After creating the project, click **Add Firebase to your web app**.
5. In the dialog you can find the **json**.

You can now enter the json in the Firebase app config:
```ballerina
var firebaseapp = new firebase_core:Firebase({
    apiKey: "<your-api-key>",
    authDomain: "<your-auth-domain>",
    databaseURL: "<your-database-url>",
    projectId: "<your-cloud-firestore-project>",
    storageBucket: "<your-storage-bucket>",
    messagingSenderId: "<your-sender-id>",
    appId: "<your-app-id>"
});
```