import 'dart:io';

class Contact {
  late String? fName;
  late String? lName;
  late String? phoneNumber;
  late String? email;
  late File? image;

  Contact({
    required this.fName,
    required this.lName,
    required this.phoneNumber,
    required this.email,
    required this.image,
  });
}
