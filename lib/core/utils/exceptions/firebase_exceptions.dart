class AppFirebaseExceptions implements Exception {
  final String code;

  AppFirebaseExceptions(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try again later.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check the documentation.';
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audience.';
      case 'invalid-user-token':
        return 'The user token is invalid.';
      case 'user-token-expired':
        return 'The user token has expired.';
      case 'user-token-revoked':
        return 'The user token has been revoked. Please log in again.';
      case 'invalid-verification-code':
        return 'The verification code is invalid.';
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-disabled':
        return 'The user account has been disabled.';
      case 'user-not-found':
        return 'No user found with this email.';
      case 'invalid-credential':
        return 'The credential is invalid.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same credential.';
      case 'Quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'wrong-password':
        return 'Incorrect password.';
      case 'email-already-in-use':
        return 'This email is already associated with another account.';
      case 'provider-already-linked':
        return 'This provider is already linked to another account.';
      case 'weak-password':
        return 'The password is too weak.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please contact support.';
      case 'network-request-failed':
        return 'Network error. Please try again later.';
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';
      case 'internal-error':
        return 'An internal error occurred. Please try again later.';
      case 'app-not-authorized':
        return 'The app is not authorized to use Firebase Authentication. Please check your configuration.';
      case 'invalid-api-key':
        return 'The API key is invalid. Please check your configuration.';
      case 'invalid-app-credential':
        return 'The app credential is invalid. Please check your configuration.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid.';
      default:
        return 'An unknown error occurred. Please try again.';
    }
  }
}
