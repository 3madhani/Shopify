import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String email;
  final String username;
  String phoneNumber;
  String profileImage;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.username,
    required this.phoneNumber,
    required this.profileImage,
  });

  Map<String, dynamic> toJson() => {
        'FirstName': firstName,
        'LastName': lastName,
        'Email': email,
        'Username': username,
        'PhoneNumber': phoneNumber,
        'ProfileImage': profileImage,
      };

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        firstName: data['FirstName'] ?? '',
        lastName: data['LastName'] ?? '',
        email: data['Email'] ?? '',
        username: data['Username'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
        profileImage: data['ProfileImage'] ?? '',
      );
    }
    return UserModel.empty();
  }

  String get fullName => '$firstName $lastName';
  String get formattedPhoneNumber =>
      AppFormatter.internationalFormatePhoneNumber(phoneNumber);
  static List<String> nameParts(fullName) => fullName.split(" ");

  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername = "$firstName$lastName";
    String usernameWithPrefix = "cwt_$camelCaseUsername";

    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
        id: '',
        firstName: '',
        lastName: '',
        email: '',
        username: '',
        phoneNumber: '',
        profileImage: '',
      );
}
