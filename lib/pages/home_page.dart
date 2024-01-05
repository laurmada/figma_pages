import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27272C),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 80, right: 40, bottom: 40, left: 40),
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
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(327, 48)),
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xFF0064D0)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )),
                  ),
                  child: const Text(
                    'Next step',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                OutlinedButton(
                  onPressed: () {
                    Modular.to.navigate('/signup/step1');
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(327, 48)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
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
          ),
        ],
      ),
    );
  }
}
