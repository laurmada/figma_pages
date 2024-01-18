import 'package:figma_screens/stores/create_account_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Step2Page extends StatefulWidget {
  const Step2Page({super.key});

  @override
  State<Step2Page> createState() => _Step2PageState();
}

class _Step2PageState extends State<Step2Page> {
  CreateAccountStore createAccountStore = CreateAccountStore();
  final phonenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF27272C),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF27272C),
        surfaceTintColor: Colors.transparent,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Modular.to.navigate('/signup/step1');
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
      body: Observer(builder: (_) {
        return SingleChildScrollView(
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
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Country',
                        style: TextStyle(
                          color: Color(0xFFF0F0F1),
                          fontSize: 16,
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(height: 8),
                    DropdownButtonFormField(
                      value: createAccountStore.selectedValue,
                      items: const [
                        DropdownMenuItem(
                            value: 'Brasil',
                            child: Text(
                              'Brasil',
                              style: TextStyle(color: Color(0xFF78797D)),
                            )),
                        DropdownMenuItem(
                            value: 'Japão',
                            child: Text(
                              'Japão',
                              style: TextStyle(color: Color(0xFF78797D)),
                            )),
                      ],
                      onChanged: (value) {
                        createAccountStore.selectedValue.toString();
                      },
                      hint: const Text(
                        'Select your country',
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
                padding:
                    const EdgeInsets.only(bottom: 183, right: 24, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Phone number',
                        style: TextStyle(
                          color: Color(0xFFF0F0F1),
                          fontSize: 16,
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(height: 8),
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: createAccountStore.setPhonenumber,
                      controller: phonenumberController,
                      decoration: const InputDecoration(
                        hintText: 'Sample +1 XXX XXX XXXX',
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
                child: TextButton(
                  onPressed: () {
                    createAccountStore.isValidFormStep2
                        ? Modular.to.navigate('/signup/step3')
                        : null;
                  },
                  style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(327, 48)),
                    backgroundColor: MaterialStatePropertyAll(
                        createAccountStore.isValidFormStep2
                            ? const Color(0xFF0064D0)
                            : const Color(0xFF44454B).withOpacity(0.5)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )),
                  ),
                  child: Text(
                    'Next step',
                    style: TextStyle(
                      color: createAccountStore.isValidFormStep2
                          ? Colors.white
                          : const Color(0xFFA5A5A9),
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
      }),
    );
  }
}
