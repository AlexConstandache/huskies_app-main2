import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:huskies_app/gui/views/auth/signup_view.dart';
import 'package:huskies_app/gui/views/widgets/custombuttonauth.dart';
import 'package:huskies_app/gui/views/widgets/navigation/nav_layer.dart';
import 'package:huskies_app/gui/views/widgets/textformfield.dart';
import 'package:huskies_app/logic/helper/app_theme.dart';
import 'package:huskies_app/logic/helper/helpers.dart';
import 'package:huskies_app/logic/provider/notifier.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return SafeArea(
          child: Scaffold(
            // backgroundColor: Colors.white,
            body: Stack(
              children: [
                AppTheme.backgroundImageHomePage,
                Container(color: AppTheme.container),
                Center(
                  child: Container(
                    padding: AppTheme.hugePadding,
                    child: ListView(children: [
                      Column(
                        crossAxisAlignment: AppTheme.crossStart,
                        children: [
                          // const SizedBox(height: 50),
                          Center(
                            child: SizedBox(
                              // alignment: Alignment.center,
                              width: 180,
                              height: 180,
                              child: Image.asset(
                                "assets/huskies.png",
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                          AppTheme.sizedBox40,
                          const Text(
                            "Anmelden",
                            style: AppTheme.textDefault,
                          ),
                          AppTheme.sizedBox14,
                          const Text("E-Mail", style: AppTheme.logInTextSize14),
                          Padding(
                            padding: AppTheme.bigPadding,
                            child: CustomeTextForm(hinttext: "Email", mycontroller: email),
                          ),
                          const Text("Passwort", style: AppTheme.logInTextSize14),

                          Padding(
                            padding: AppTheme.mediumPadding,
                            child: Column(
                              children: [
                                CustomeTextForm(
                                  hinttext: "Passwort",
                                  mycontroller: password,
                                  isPassword: true,
                                ),
                                Container(
                                  margin: AppTheme.bigPaddingTopButton,
                                  alignment: Alignment.bottomRight,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const Signup()));
                                    },
                                    child: const Text("Passwort vergessen?",
                                        style: AppTheme.logInTextSize10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      CustomButtonAuth(
                          title: "Anmelden",
                          onPress: () {
                            if (ref.watch(appStateNotifierProvider).user == null) {
                              Helpers.showLoadingView(context, advertising: 'werbung');
                              Future(() => ref
                                  .watch(appStateNotifierProvider.notifier)
                                  .signInWithEmailAndPassword(
                                      email: email.text, password: password.text)).then((isSucces) {
                                if (!isSucces) {
                                  Future.delayed(const Duration(seconds: 2))
                                      .then((value) => Navigator.of(context).pop());
                                } else {
                                  Navigator.of(context).pop();
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ViewNavigator(),
                                    ),
                                  );
                                }
                                log('user: ${ref.watch(appStateNotifierProvider).user?.toJson()}');
                              });
                            }
                          }),
                      const Padding(
                        padding: AppTheme.hugePadding,
                        child: GoogleLogInButtonWidget(),
                      ),
                      // Text("Don't Have An Account ? Resister" , textAlign: TextAlign.center,)
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => const Signup()));
                        },
                        child: const Center(
                          child: Text.rich(
                            TextSpan(
                              text: "Sie haben noch kein Account? ",
                              style: AppTheme.logInTextSize13,
                              children: [
                                TextSpan(
                                    text: "Register",
                                    style: AppTheme.registerButton),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class GoogleLogInButtonWidget extends StatelessWidget {
  const GoogleLogInButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: AppTheme.googleLogInButton,
      ),
      color: AppTheme.customButton,
      textColor: Colors.white,
      onPressed: () {},
      child: const Row(
        mainAxisAlignment: AppTheme.mainCenter,
        children: [
          Text("Login With Google  "),
          Icon(FontAwesome5.google),
        ],
      ),
    );
  }
}
