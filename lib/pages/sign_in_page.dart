import 'package:figma_screens/services/auth_service.dart';
import 'package:figma_screens/stores/sign_in_store.dart';
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

  /*login() async {
    try {
      await context
          .read<AuthService>()
          .login(signinStore.username, signinStore.password);
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27272C),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        backgroundColor: const Color(0xFF27272C),
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Modular.to.navigate('/');
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),
            const Text(
              'Voltar',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cabin',
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
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
                      child: Column(
                        children: [
                          const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Username',
                                style: TextStyle(
                                  color: Color(0xFFF0F0F1),
                                  fontSize: 16,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          const SizedBox(height: 8),
                          TextField(
                            controller: signinStore.usernameController,
                            onChanged: signinStore.setUsername,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.people),
                              hintText: 'Type your username',
                              hintStyle: TextStyle(
                                color: Color(0xFF57585E),
                                fontSize: 16,
                                fontFamily: 'Cabin',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  color: Color(0xFFF0F0F1),
                                  fontSize: 16,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          const SizedBox(height: 8),
                          TextField(
                            controller: signinStore.passswordController,
                            onChanged: signinStore.setPassword,
                            decoration: const InputDecoration(
                              hintText: 'Type your password',
                              prefixIcon: Icon(Icons.lock),
                              hintStyle: TextStyle(
                                color: Color(0xFF57585E),
                                fontSize: 16,
                                fontFamily: 'Cabin',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              minimumSize:
                                  const MaterialStatePropertyAll(Size(327, 48)),
                              backgroundColor: MaterialStatePropertyAll(
                                  signinStore.isformValid
                                      ? const Color(0xFF0064D0)
                                      : const Color(0xFF44454B)
                                          .withOpacity(0.5)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              )),
                            ),
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                color: signinStore.isformValid
                                    ? Colors.white
                                    : const Color(0xFFA5A5A9),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 24, right: 24, left: 24),
                      child: Column(
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              Modular.to.navigate('/signup/step1');
                            },
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  const Size(327, 48)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              )),
                            ),
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                color: Color(0xFFA5A5A9),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
    );
  }
}
