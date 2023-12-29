import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccount1 extends StatelessWidget {
  const CreateAccount1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27272C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 14, top: 24, bottom: 24, right: 24), //left: 24
            child: SizedBox(
              width: 71, // width: 70
              height: 24,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Modular.to.navigate('/');
                    },
                    child: SvgPicture.asset(
                      'assets/icons/arrow-back.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Voltar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 327,
              height: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Container(
                      width: 74.25,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF49819),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    child: Container(
                      width: 74.25,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF44454B),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    child: Container(
                      width: 74.25,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF44454B),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    child: Container(
                      width: 74.25,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF44454B),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(
                  width: 327,
                  child: Column(
                    children: [
                      Text(
                        'Create an account',
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Cabin',
                          color: Color(0xFFF49819),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Start right now with us',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Cabin',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: SizedBox(
              width: 327,
              height: 350, // height: 380
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your E-mail',
                    style: TextStyle(
                      color: Color(0xFFF0F0F1),
                      fontFamily: 'Cabin',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Color(0xFF78797D),
                          fontFamily: 'Cabin',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xFFF0F0F1),
                      fontFamily: 'Cabin',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: 'At least 8 caracters',
                        hintStyle: TextStyle(
                          color: Color(0xFF78797D),
                          fontFamily: 'Cabin',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: const Color(0xFFC3C4C6),
                              width: 2.0,
                            )),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "I agree with hub's",
                        style: TextStyle(
                          color: Color(0xFFC3C4C6),
                          fontFamily: 'Cabin',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        ' Terms, Privacy Policy',
                        style: TextStyle(
                          color: Color(0xFFF49819),
                          fontFamily: 'Cabin',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SizedBox(
              child: GestureDetector(
                onTap: () {
                  /*Modular.to.navigate('/account2/');*/
                },
                child: Container(
                  width: 327,
                  height: 60,
                  padding: const EdgeInsets.only(
                      left: 10, top: 16, right: 10, bottom: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF44454B).withOpacity(0.50),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: const Center(
                      child: Text(
                    'Next Step',
                    style: TextStyle(
                      color: Color(0xFFC3C4C6),
                      fontFamily: 'Cabin',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
