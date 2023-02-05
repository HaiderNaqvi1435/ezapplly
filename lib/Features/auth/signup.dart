import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Shared/widgets/buttons.dart';
import '../../Shared/widgets/logo.dart';
import '../../Shared/widgets/richtext.dart';
import '../../Shared/widgets/textinput.dart';
import 'auth_manager.dart';
import 'login.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

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
                  applogo(tagline: "Create your account"),
                  const SizedBox(height: 25),
                  Inputtext(labeltext: "Name", controller: auth.unamecont),
                  const SizedBox(height: 12),
                  Inputtext(labeltext: "Email", controller: auth.uemailcont),
                  const SizedBox(height: 12),
                  Inputtext(labeltext: "Password", controller: auth.passcont),
                  const SizedBox(height: 12),
                  largeButton(
                    colorss: colorss,
                    text: "Sign up",
                    onpress: auth.userSignup,
                  ),
                  const SizedBox(height: 12),
                  richtext(
                      onpress: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Loginpage(),
                            ));
                      }),
                      text1: "Already have and account?",
                      text2: 'Login',
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
