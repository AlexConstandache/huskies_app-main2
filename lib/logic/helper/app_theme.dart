import 'package:flutter/material.dart';

class AppTheme {
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color red = Color(0xFFD32F2F);
  static const Color blueAccent = Color(0xFF448AFF);
  static const Color blueGrey = Color(0xFF607D8B);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color teal = Color(0xFF009688);
  static const Color white70 = Color(0xB3FFFFFF);
  static const Color orange = Color(0xFFFF9800);
  static const Color huskiesPuzzle = Color.fromARGB(255, 168, 199, 224);
  static const Color customButton = Color.fromARGB(255, 22, 63, 92);
  static const Color container = Color.fromARGB(129, 0, 0, 0);
  static const Color primary = Color.fromARGB(255, 101, 132, 155);
  static const TextStyle titleStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 25);
  static const TextStyle headStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 19);
  static const TextStyle textDefault = TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white);
  static const TextStyle textHeaderHome = TextStyle(letterSpacing: 0.5, fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white);
  static const TextStyle textDefaultSmallW300 = TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Colors.white);
  static const TextStyle textDefaultSmallW500 = TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: Colors.white);
  static const TextStyle textDefaultSmall11 = TextStyle(color: Colors.white, fontSize: 11);
  static const TextStyle textHuskiesHeader = TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color.fromARGB(255, 22, 63, 92));
  static const TextStyle textHuskies = TextStyle(color: Color.fromARGB(255, 14, 31, 15));
  static const TextStyle registerButton = TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromARGB(255, 22, 63, 92));
  static const TextStyle textTrikots = TextStyle(letterSpacing: 0.5, fontWeight: FontWeight.w500, fontSize: 15, color: Color.fromARGB(255, 22, 63, 92));
  static const TextStyle logInTextSize14 = TextStyle(fontSize: 14);
  static const TextStyle logInTextSize13 = TextStyle(fontSize: 13);
  static const TextStyle logInTextSize10 = TextStyle(fontSize: 10);
  static const double smallTextSize = 9.5;
  static const FontWeight headWeight = FontWeight.w700;
  static const Color whiteBackground = Colors.white;
  static const double cardElevetion = 7.0;
  static final BorderRadius lowRoundedCorner = BorderRadius.circular(8);
  static final BorderRadius googleLogInButton = BorderRadius.circular(13);
  static const EdgeInsets hugePadding = EdgeInsets.all(20);
  static const EdgeInsets hugePaddingBottom = EdgeInsets.only(bottom: 20.0);
  static const EdgeInsets hugePaddingLeft = EdgeInsets.only(left: 25.0);
  static const EdgeInsets hugePaddingRight = EdgeInsets.only(right: 25.0);
  static const EdgeInsets bigPadding = EdgeInsets.all(16);
  static const EdgeInsets bigPaddingTopButton = EdgeInsets.only(top: 10.0, bottom: 20.0);
  static const EdgeInsets mediumPadding = EdgeInsets.all(8.0);
  static const EdgeInsets smallPadding = EdgeInsets.all(6.0);
  static const EdgeInsets smallPaddingLeftRight = EdgeInsets.only(left: 4.0, right: 4.0);
  static const EdgeInsets smallPaddingTopBottom = EdgeInsets.only(top: 1.0, bottom: 4.0);
  static const Alignment alignCenter = Alignment.center;
  static const TextAlign textCenter = TextAlign.center;
  static const MainAxisAlignment mainCenter = MainAxisAlignment.center;
  static const CrossAxisAlignment crossStart = CrossAxisAlignment.start;
  static const double mediumDistance = 12;
  static const double largeDistance = 18;
  static const double lowDistance = 6;
  //
  static const double avatarSize = 50.0;
  static const Color buttonBackgroundColor = Color.fromARGB(255, 39, 62, 73);
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(horizontal: 6, vertical: 6);
  static const TextStyle whiteTextStyle = TextStyle(color: Colors.white);
  static const TextStyle whiteTextStyleBold = TextStyle(fontWeight: FontWeight.bold, color: Colors.white);
  static const EdgeInsets defaultHorizontalDistance = EdgeInsets.symmetric(horizontal: 15);
  static const EdgeInsets popUpMargin = EdgeInsets.symmetric(horizontal: 40, vertical: 100);
  static const Color cardHighlightedColor = Color.fromARGB(255, 215, 234, 249);
  static final Decoration homePageButton = BoxDecoration(color: const Color.fromARGB(255, 22, 63, 92), borderRadius: BorderRadius.circular(7),);
  static final Opacity puzzleHuskiesImg = Opacity(opacity: 0.2, child: Image.asset('assets/puzzle_huskies.png', fit: BoxFit.cover, width: double.infinity,));
  static final Opacity backgroundImageHomePage = Opacity(opacity: 0.7, child: Image.asset("assets/background_image.jpg", fit: BoxFit.cover, alignment: Alignment.topCenter, width: double.infinity,));
  static const SizedBox sizedBox4 = SizedBox(height: 4);
  static const SizedBox sizedBox8 = SizedBox(height: 8);
  static const SizedBox sizedBox11 = SizedBox(height: 11);
  static const SizedBox sizedBox14 = SizedBox(height: 14);
  static const SizedBox sizedBox40 = SizedBox(height: 40);
  static final InputDecoration textInputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
    filled: true,
    fillColor: Colors.grey[200],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
  );
}
