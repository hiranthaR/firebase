# Firebase error record
# + message - why error happend
# + cause - error 

public type FirebaseErrorData record {
    string? message;
    error? cause;
};

# firebase error type
type FirebaseError error;
