import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
    );
  }
}
