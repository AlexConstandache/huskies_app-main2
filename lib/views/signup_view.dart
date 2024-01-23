import 'package:flutter/material.dart';
import 'package:huskies_app/auth/components/custombuttonauth.dart';
import 'package:huskies_app/auth/components/textformfield.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

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
                  "Registrieren",
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
              title: "Registrieren",
              onPress: () {},
            ),

            Container(height: 20),

            Container(height: 20),
            // Text("Don't Have An Account ? Resister" , textAlign: TextAlign.center,)
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("login");
              },
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "haben Sie ein Account ? ",
                      ),
                      TextSpan(
                          text: "Anmelden",
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
