import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Step4Page extends StatelessWidget {
  const Step4Page({super.key});

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
                Modular.to.navigate('/signup/step3');
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
          children: [
            Container(
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
                        color: const Color(0xff44454B),
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
                        color: const Color(0xff44454B),
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
                        color: const Color(0xff44454B),
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
            const Padding(
              padding: EdgeInsets.only(right: 24, left: 24, bottom: 24),
              child: Column(
                children: [
                  Text(
                    'Create an account',
                    style: TextStyle(
                      color: Color(0xFFF49819),
                      fontSize: 32,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Start right now with us!',
                    style: TextStyle(
                      color: Color(0xFFF0F0F1),
                      fontSize: 20,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Gender',
                      style: TextStyle(
                        color: Color(0xFFF0F0F1),
                        fontSize: 16,
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.w400,
                      )),
                  const SizedBox(height: 8),
                  DropdownButtonFormField(
                    items: const [],
                    onChanged: (_) {},
                    hint: const Text(
                      'Select your gender',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Color(0xFF78797D),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 183, right: 24, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Birthday',
                      style: TextStyle(
                        color: Color(0xFFF0F0F1),
                        fontSize: 16,
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.w400,
                      )),
                  const SizedBox(height: 8),
                  DropdownButtonFormField(
                    items: const [],
                    onChanged: (_) {},
                    hint: const Text(
                      'Enter your birthday date',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          color: Color(0xFF78797D),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    icon: const Icon(Icons.calendar_month),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: TextButton(
                onPressed: () {
                  Modular.to.navigate('/signup/step5');
                },
                style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(327, 48)),
                  backgroundColor: MaterialStatePropertyAll(
                      const Color(0xFF44454B).withOpacity(0.5)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  )),
                ),
                child: const Text(
                  'Next step',
                  style: TextStyle(
                    color: Color(0xFFA5A5A9),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
