import 'package:figma_screens/widgets/custom_signup_button.dart';
import 'package:figma_screens/widgets/custom_signin_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27272C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 80, right: 40, bottom: 40, left: 40),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 98.03, right: 47.5, bottom: 98.03, left: 47.5),
                child: SvgPicture.asset(
                  'assets/icons/Logo.svg',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, bottom: 80, left: 40),
              child: Column(
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: 'Cabin',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 24),
                  CustomSignInButton(
                    borderRadius: 6,
                    buttonColor: const Color(0xFF0064D0),
                    isDisabled: false,
                    disabledColor: const Color(0xFF44454B).withOpacity(0.5),
                    width: 327,
                    height: 48,
                    buttonText: 'Sign In',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    textDisabledColor: const Color(0xFFA5A5A9),
                    textColor: Colors.white,
                    onPressed: () async {
                      Modular.to.navigate('/signin/signinpage');
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomSignUpButton(
                      width: 327,
                      height: 48,
                      borderRadius: BorderRadius.circular(6),
                      inputText: 'Sign Up',
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontColor: const Color(0xFFA5A5A9),
                      onPressed: () {
                        Modular.to.navigate('/signup/step1');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
