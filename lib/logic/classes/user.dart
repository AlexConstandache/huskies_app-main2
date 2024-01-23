import 'package:flutter/material.dart';

class User {
  final bool hasPaymentData;
  final bool isLogIn;
  final String firstName;
  final String name;
  final String uID;
  final Image? profileImage;
  final List<String>? itemTokens;
  const User({
    this.hasPaymentData = false,
    this.isLogIn = false,
    this.itemTokens,
    required this.firstName,
    required this.name,
    this.profileImage,
    required this.uID,
  });
}
