import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Step3Page extends StatelessWidget {
  const Step3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27272C),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF27272C),
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Modular.to.navigate('/signup/step2');
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
      body: Column(
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
                      color: const Color(0xff44454B),
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
          const Padding(
            padding: EdgeInsets.only(right: 24, left: 24, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('User Name',
                    style: TextStyle(
                      color: Color(0xFFF0F0F1),
                      fontSize: 16,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your user name',
                    hintStyle: TextStyle(
                      color: Color(0xFF78797D),
                      fontSize: 16,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 24, right: 24, left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('First Name',
                    style: TextStyle(
                      color: Color(0xFFF0F0F1),
                      fontSize: 16,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your first name',
                    hintStyle: TextStyle(
                      color: Color(0xFF78797D),
                      fontSize: 16,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 71, right: 24, left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Last Name',
                    style: TextStyle(
                      color: Color(0xFFF0F0F1),
                      fontSize: 16,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your last name',
                    hintStyle: TextStyle(
                      color: Color(0xFF78797D),
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
            child: TextButton(
              onPressed: () {
                Modular.to.navigate('/signup/step4');
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
    );
  }
}
