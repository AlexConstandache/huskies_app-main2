import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:huskies_app/auth/components/custombuttonauth.dart';
import 'package:huskies_app/auth/components/textformfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
                    width: 140,
                    height: 140,
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 14,
                ),

                const Text(
                  "E-Mail",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomeTextForm(
                    hinttext: "Email Eingeben", mycontroller: email),

                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Passwort",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                CustomeTextForm(
                    hinttext: "Password Eingeben", mycontroller: password),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    "Passwort vergessen?",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
            CustomButtonAuth(
              title: "Anmelden",
              onPress: () {},
            ),

            Container(height: 20),

            MaterialButton(
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
                    Icon(FontAwesome5.google)
                  ],
                )),
            Container(height: 20),
            // Text("Don't Have An Account ? Resister" , textAlign: TextAlign.center,)
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("signup");
              },
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't Have An Account ? ",
                      ),
                      TextSpan(
                          text: "Register",
                          style: TextStyle(
                              color: Color.fromARGB(255, 22, 63, 92),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
