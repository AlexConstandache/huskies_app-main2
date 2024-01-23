import 'package:flutter/material.dart';

class UserIconWidget extends StatelessWidget {
  final String image;
  final void Function()? onPressed;
  const UserIconWidget({super.key, required this.image, this.onPressed});

  @override
  Widget build(context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(45)),
        child: Image.asset(
          'assets/$image',
          width: 45,
        ),
      ),
    );
  }
}
