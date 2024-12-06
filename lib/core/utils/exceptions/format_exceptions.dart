// ignore_for_file: public_member_api_docs, sort_constructors_first

class AppFormatExceptions implements Exception {
  final String message;

  const AppFormatExceptions(
      [this.message =
          'An unexpected format error occurred. Please check your input.']);

  factory AppFormatExceptions.fromMessage(String message) =>
      AppFormatExceptions(message);

  String get formattedMessage => message;

  factory AppFormatExceptions.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const AppFormatExceptions('The email address is invalid.');
      case 'invalid-password':
        return const AppFormatExceptions('The password is invalid.');
      case 'invalid-email-format':
        return const AppFormatExceptions(
            'The email format is invalid. please use a valid email address');
      case 'invalid-password-length':
        return const AppFormatExceptions(
            'The password length is invalid. please use a strong password');
      case 'invalid-url-format':
        return const AppFormatExceptions(
          'The url format is invalid. please use a valid url',
        );
      case 'invalid-date-format':
        return const AppFormatExceptions(
          'The date format is invalid. please use a valid date',
        );
      case 'invalid-phone-number-format':
        return const AppFormatExceptions(
            'The phone number format is invalid. please use a valid phone number');
      case 'invalid-credit-card-format':
        return const AppFormatExceptions(
            'The credit card format is invalid. please use a valid credit card number');
      case 'invalid-number-format':
        return const AppFormatExceptions(
            'The number format is invalid. please use a valid number');
      case 'invalid-password-format':
        return const AppFormatExceptions(
            'The password format is invalid. please use a strong password');
      case 'invalid-input':
        return const AppFormatExceptions('The input provided is invalid.');
      case 'empty-field':
        return const AppFormatExceptions(
            'One or more required fields are empty.');
      case 'value-too-large':
        return const AppFormatExceptions('The value entered is too large.');
      case 'value-too-small':
        return const AppFormatExceptions('The value entered is too small.');
      case 'invalid-format':
        return const AppFormatExceptions(
            'The format of the input is incorrect.');
      case 'null-value':
        return const AppFormatExceptions(
            'A null value was encountered where it is not allowed.');
      case 'type-mismatch':
        return const AppFormatExceptions(
            'The type of the value does not match the expected type.');
      case 'out-of-range':
        return const AppFormatExceptions(
            'The value is out of the allowed range.');
      case 'operation-failed':
        return const AppFormatExceptions(
            'The operation could not be completed.');
      default:
        return const AppFormatExceptions(
            'An unknown error occurred. Please try again.');
    }
  }

  @override
  String toString() => 'AppFormatExceptions: $message';
}
