import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27272C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 80, bottom: 80, left: 40, right: 40),
              child: SizedBox(
                child: SvgPicture.asset(
                  'assets/icons/Logo.svg',
                  width: 200,
                  height: 110.95,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 80, left: 40, right: 40),
              child: SizedBox(
                child: Column(
                  children: [
                    const SizedBox(
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          fontFamily: 'Cabin',
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      child: Container(
                        width: 295,
                        height: 48,
                        padding: const EdgeInsets.only(
                            top: 10, left: 16, bottom: 10, right: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0064D0),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          /*Modular.to.popAndPushNamed('/account1/');*/
                          Modular.to.navigate('/account1/');
                        },
                        child: Container(
                          width: 295,
                          height: 48,
                          padding: const EdgeInsets.only(
                              top: 10, left: 16, bottom: 10, right: 16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF78797D),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Color(0xFF78797D),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
