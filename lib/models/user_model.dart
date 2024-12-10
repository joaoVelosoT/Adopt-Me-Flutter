import 'package:flutter/material.dart';

class UserModel {
  final String name;
  final String email;
  final String phone;
  final String image;
  final String password;
  final String confirmpassword;

  UserModel({
    required this.image,
    required this.password,
    required this.confirmpassword,
    required this.name,
    required this.email,
    required this.phone,
  });
}
