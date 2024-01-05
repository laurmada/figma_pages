import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Step5Page extends StatelessWidget {
  const Step5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27272C),
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: const Color(0xFF27272C),
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Modular.to.navigate('/signup/step4');
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 74.25,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color(0xFFF49819),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 74.25,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color(0xFFF49819),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 74.25,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color(0xFFF49819),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 74.25,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color(0xFFF49819),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/Email.svg',
                  ),
                  const Text(
                    'Your account has been\ncreated successfully',
                    style: TextStyle(
                      color: Color(0xFFF49819),
                      fontSize: 26,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24, left: 24, bottom: 24),
              child: Column(
                children: [
                  Text(
                    'Check your e-mail',
                    style: TextStyle(
                      color: Color(0xFFC3C4C6),
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Fulano.beltrano@gmail.com',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'And confirm your data to validade your account.',
                    style: TextStyle(
                      color: Color(0xFFC3C4C6),
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, left: 24, bottom: 127),
              child: Column(
                children: [
                  const Text(
                    'Dont receive e-mail?',
                    style: TextStyle(
                      color: Color(0xFFC3C4C6),
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(327, 48)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      )),
                    ),
                    child: const Text(
                      'Send again',
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
      ),
    );
  }
}
