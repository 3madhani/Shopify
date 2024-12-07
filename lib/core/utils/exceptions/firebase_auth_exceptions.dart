// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppFirebaseAuthExceptions implements Exception {
  final String code;
  AppFirebaseAuthExceptions(this.code);

  String get message {
    switch (code) {
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-disabled':
        return 'The user account has been disabled.';
      case 'no-current-user':
        return 'There is no user currently signed in.';
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
      case 'invalid-verification-code':
        return 'The verification code is invalid.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid.';
      default:
        return 'An unknown error occurred. Please try again.';
    }
  }
}
