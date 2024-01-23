import 'package:flutter/material.dart';
import 'package:huskies_app/logic/helper/app_theme.dart';

class CustomeTextForm extends StatelessWidget {
  final bool isPassword;
  final String hinttext;
  final TextEditingController mycontroller;

  const CustomeTextForm({
    super.key,
    required this.hinttext,
    required this.mycontroller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) => TextFormField(
        maxLength: isPassword ? null : 64,
        controller: mycontroller,
        decoration: AppTheme.textInputDecoration,
        obscureText: isPassword,
      );
}

        //  InputDecoration(
        //   hintText: hinttext,
        //   contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        //   filled: true,
        //   fillColor: Colors.grey[200],
        //   border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(10),
        //     borderSide: const BorderSide(color: Colors.transparent),
        //   ),
        //   focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(10),
        //     borderSide: const BorderSide(color: Colors.grey),
        //   ),
        //   enabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(10),
        //     borderSide: const BorderSide(color: Colors.transparent),
        //   ),
        //   errorBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(10),
        //     borderSide: const BorderSide(color: Colors.transparent),
        //   ),
        // ),