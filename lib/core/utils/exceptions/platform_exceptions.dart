// ignore_for_file: public_member_api_docs, sort_constructors_first

class AppPlatformExceptions implements Exception {
  final String code;

  // Constructor for the exception class
  AppPlatformExceptions(this.code);

  // Getter to return the appropriate message based on the code
  String get message {
    switch (code) {
      case 'invalid-argument':
        return 'An invalid argument was provided.';
      case 'invalid-state':
        return 'An invalid state was encountered.';
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials. Please double-check your email and password.';
      case 'Unable to establish connection on channel':
        return 'Unable to establish connection on channel.';
      case 'user-not-found':
        return 'User not found. Please check your email and password.';
      case 'wrong-password':
        return 'Wrong password. Please check your email and password.';
      case 'too-many-requests':
        return 'Too many attempts. Please try again later.';
      case 'invalid-phone-number':
        return 'Invalid phone number. Please enter a valid phone number.';
      case 'uid-already-exists':
        return 'User already exists. Please use a different email address.';
      case 'email-already-in-use':
        return 'Email already in use. Please use a different email address.';
      case 'sign-in-failed':
        return 'Sign-in failed. Please check your email and password.';
      case 'user-disabled':
        return 'User is disabled. Please contact support for assistance.';
      case 'operation-not-allowed':
        return 'Operation is not allowed. Please contact support for assistance.';
      case 'internal-error':
        return 'An internal error occurred. Please try again later.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please check your verification code and try again.';
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please check your verification ID and try again.';
      case 'network-error':
        return 'A network error occurred.';
      case 'platform-not-supported':
        return 'The platform is not supported.';
      case 'os-version-not-compatible':
        return 'The operating system version is not compatible.';
      case 'unsupported-feature':
        return 'This feature is not supported on your platform.';
      case 'device-not-found':
        return 'The required device is not found.';
      case 'missing-dependency':
        return 'A required dependency is missing.';
      case 'permission-denied':
        return 'Permission to access the required feature was denied.';
      case 'device-locked':
        return 'The device is locked or unavailable.';
      case 'feature-unsupported':
        return 'This feature is unsupported on this platform.';
      case 'unknown-error':
        return 'An unknown platform error occurred.';
      case 'unsupported-operation':
        return 'This operation is not supported on this platform.';
      case 'platform-service-unavailable':
        return 'The platform service is currently unavailable.';
      default:
        return 'An unspecified platform error occurred.';
    }
  }
}
