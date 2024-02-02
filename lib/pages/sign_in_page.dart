import 'package:figma_screens/authentication/auth_manager.dart';
import 'package:figma_screens/stores/sign_in_store.dart';
import 'package:figma_screens/widgets/custom_appbar.dart';
import 'package:figma_screens/widgets/custom_signup_button.dart';
import 'package:figma_screens/widgets/custom_signin_button.dart';
import 'package:figma_screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  SigninStore signinStore = SigninStore();
  AuthManager authManager = AuthManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27272C),
      appBar: CustomAppbar(
        onPressed: () {
          Modular.to.navigate('/');
        },
        backgroundColor: const Color(0xFF27272C),
        elevation: 0,
        surfaceTint: Colors.transparent,
        textInput: 'Voltar',
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        fontColor: Colors.white,
        fontFamily: 'Cabin',
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      body: Observer(
          builder: (context) => SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xFFF49819),
                          fontSize: 32,
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: CustomTextfield(
                        onChanged: signinStore.setUsername,
                        controller: signinStore.usernameController,
                        prefixIcon: const Icon(Icons.people),
                        obscure: false,
                        hintColor: const Color(0xFF57585E),
                        hintFamily: 'Cabin',
                        hintSize: 16,
                        hintWeight: FontWeight.w400,
                        hintText: 'Type your email',
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textInput: 'Email',
                        fontColor: const Color(0xFFF0F0F1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Cabin',
                        sizedBoxHeight: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: CustomTextfield(
                        onChanged: signinStore.setPassword,
                        controller: signinStore.passswordController,
                        prefixIcon: const Icon(Icons.lock),
                        obscure: false,
                        hintColor: const Color(0xFF57585E),
                        hintFamily: 'Cabin',
                        hintSize: 16,
                        hintWeight: FontWeight.w400,
                        hintText: 'Type your password',
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textInput: 'Password',
                        fontColor: const Color(0xFFF0F0F1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Cabin',
                        sizedBoxHeight: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: CustomSignInButton(
                        borderRadius: 6,
                        buttonColor: signinStore.isformValid
                            ? const Color(0xFF0064D0)
                            : const Color(0xFF44454B),
                        isDisabled: false,
                        disabledColor: const Color(0xFF44454B).withOpacity(0.5),
                        width: 327,
                        height: 48,
                        buttonText: 'Sign In',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter",
                        textDisabledColor: const Color(0xFFA5A5A9),
                        textColor: signinStore.isformValid
                            ? Colors.white
                            : const Color(0xFFA5A5A9),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 24, right: 24, left: 24),
                      child: CustomSignUpButton(
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
                    )
                  ],
                ),
              )),
    );
  }
}
