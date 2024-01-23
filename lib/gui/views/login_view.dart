import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:huskies_app/auth/components/custombuttonauth.dart';
import 'package:huskies_app/auth/components/textformfield.dart';
import 'package:huskies_app/gui/views/signup_view.dart';
import 'package:huskies_app/gui/views/widgets/navigation/nav_layer.dart';

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
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: Stack(
          children: [
            Opacity(
              opacity: 0.7,
              child: Image.asset(
                "assets/background_image.jpg",
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                width: double.infinity,
                // height: double.infinity,
              ),
            ),
            Container(color: const Color.fromARGB(129, 0, 0, 0)),
            Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: ListView(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Anmelden",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 14,
                      ),

                      const Text(
                        "E-Mail",
                        style: TextStyle(fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CustomeTextForm(
                            hinttext: "Email", mycontroller: email),
                      ),

                      const Text(
                        "Passwort",
                        style: TextStyle(fontSize: 14),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CustomeTextForm(
                              hinttext: "Passwort",
                              mycontroller: password,
                              isPassword: true,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Signup())),
                                child: const Text(
                                  "Passwort vergessen?",
                                  style: TextStyle(fontSize: 10),
                                ),
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewNavigator()));
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: GoogleLogInButtonWidget(),
                  ),
                  // Text("Don't Have An Account ? Resister" , textAlign: TextAlign.center,)
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()));
                      // Navigator.of(context).pushNamed("signup");
                    },
                    child: const Center(
                      child: Text.rich(
                        TextSpan(
                          text: "Sie haben noch kein Account? ",
                          style: TextStyle(fontSize: 13),
                          children: [
                            // TextSpan(
                            TextSpan(
                                text: "Register",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 22, 63, 92),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
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
        borderRadius: BorderRadius.circular(13),
      ),
      color: const Color.fromARGB(255, 22, 63, 92),
      textColor: Colors.white,
      onPressed: () {},
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Login With Google  "),
          Icon(FontAwesome5.google),
        ],
      ),
    );
  }
}
