import 'package:flutter/material.dart';
import 'package:huskies_app/logic/helper/app_theme.dart';

class CustomButtonAuth extends StatelessWidget {
  final String title;
  final void Function()? onPress;
  const CustomButtonAuth({super.key, required this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
      ),
      color: AppTheme.customButton,
      onPressed: onPress,
      child: Text(
        title,
        style: AppTheme.whiteTextStyle,
      ),
    );
  }
}
