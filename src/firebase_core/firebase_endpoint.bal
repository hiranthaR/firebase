# Firebase Client Object.

public type Firebase object {

    # initialize the app with firebase configurations
    # + firebaseConfigJson - cofigurations issue by firebase web app
    # + return - creates object or returns error if there
    public function __init(json firebaseConfigJson) returns FirebaseError? {
        FirebaseConfig | error firebaseConfig = FirebaseConfig.constructFrom(firebaseConfigJson);
        if (firebaseConfig is error) {
            return firebaseConfig;
        }
    }

    # get client for Firebase endpoint
    public function getClient() {

    }
};

# confuguration for the Firebase client
# + apiKey - issue from firebase web app
# + authDomain - issue from firebase web app
# + databaseURL - issue from firebase web app
# + projectId - issue from firebase web app
# + storageBucket - issue from firebase web app
# + messagingSenderId - issue from firebase web app
# + appId - issue from firebase web app

public type FirebaseConfig record {
    string apiKey;
    string authDomain;
    string databaseURL;
    string projectId;
    string storageBucket;
    string messagingSenderId;
    string appId;
};

