import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Shared/widgets/buttons.dart';
import '../../Shared/widgets/logo.dart';
import '../../Shared/widgets/richtext.dart';
import '../../Shared/widgets/textinput.dart';
import 'auth_manager.dart';
import 'signup.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final colorss = Theme.of(context).colorScheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: size.width / 1.3,
            child: Consumer<AuthManager>(
              builder: (context, auth, child) => Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  applogo(tagline: "Sign to your account"),
                  const SizedBox(height: 25),
                  Inputtext(labeltext: "Email", controller: auth.uemailcont),
                  const SizedBox(height: 12),
                  Inputtext(labeltext: "Password", controller: auth.passcont),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: size.width / 1.3,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password",
                        style: TextStyle(fontSize: 12, color: colorss.primary),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  largeButton(
                    text: "Login",
                    colorss: colorss,
                    onpress: auth.userLogin,
                  ),
                  const SizedBox(height: 12),
                  richtext(
                      onpress: (() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signuppage(),
                            ));
                      }),
                      text1: "Don't have and account?",
                      text2: 'Register',
                      context: context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
