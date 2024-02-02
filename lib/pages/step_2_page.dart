import 'package:figma_screens/stores/create_account_store.dart';
import 'package:figma_screens/widgets/custom_appbar.dart';
import 'package:figma_screens/widgets/custom_createaccount_message.dart';
import 'package:figma_screens/widgets/custom_dropdownbutton.dart';
import 'package:figma_screens/widgets/custom_progressstep_bar.dart';
import 'package:figma_screens/widgets/custom_signin_button.dart';
import 'package:figma_screens/widgets/custom_textfield.dart';
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
              CustomProgressStepBar(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(24),
                width: 74.25,
                height: 4,
                borderRadius: BorderRadius.circular(2),
                color_1: const Color(0xff44454B),
                color_2: const Color(0xFFF49819),
                color_3: const Color(0xff44454B),
                color_4: const Color(0xff44454B),
                sizedBoxWidth: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 24, left: 24, bottom: 24),
                child: CustomCreateAccountMessage(
                  textInput_1: 'Create an account',
                  textInput_2: 'Start right now with us!',
                  fontColor_1: Color(0xFFF49819),
                  fontColor_2: Color(0xFFF0F0F1),
                  fontSize_1: 32,
                  fontSize_2: 20,
                  fontFamily: 'Cabin',
                  fontWeight_1: FontWeight.w700,
                  fontWeight_2: FontWeight.w400,
                  sizedBoxHeight: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
                child: CustomDropDownButton(
                    inputText: "Contry",
                    fontColor: const Color(0xFFF0F0F1),
                    fontSize: 16,
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.w400,
                    sizedBoxHeight: 8,
                    items: const [
                      DropdownMenuItem(
                          value: 'Brasil',
                          child: Text(
                            'Brasil',
                            style: TextStyle(color: Color(0xFF78797D)),
                          )),
                    ],
                    onChanged: (value) {
                      createAccountStore.selectedValue.toString();
                    },
                    hintText: 'Select your country',
                    hintColor: const Color(0xFF78797D),
                    hintFamily: 'Cabin',
                    hintSize: 16,
                    hintWeight: FontWeight.w400,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    crossAxisAlignment: CrossAxisAlignment.start),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 183, right: 24, left: 24),
                child: CustomTextfield(
                  onChanged: createAccountStore.setPhonenumber,
                  controller: createAccountStore.phonenumberController,
                  keyboardType: TextInputType.number,
                  hintColor: const Color(0xFF57585E),
                  hintFamily: 'Cabin',
                  hintSize: 16,
                  hintWeight: FontWeight.w400,
                  hintText: 'Sample +1 XXX XXX XXXX',
                  obscure: false,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textInput: 'Phone number',
                  fontColor: const Color(0xFFF0F0F1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Cabin',
                  sizedBoxHeight: 8,
                ),
              ),
              CustomSignInButton(
                borderRadius: 6,
                buttonColor: const Color(0xFF0064D0),
                isDisabled: createAccountStore.isValidFormStep2 ? false : true,
                disabledColor: const Color(0xFF44454B).withOpacity(0.5),
                width: 327,
                height: 48,
                buttonText: 'Next Step',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
                textDisabledColor: const Color(0xFFA5A5A9),
                textColor: Colors.white,
                onPressed: () async {
                  if (createAccountStore.isValidFormStep2) {
                    await createAccountStore.saveUserData();
                    Modular.to.navigate('/signup/step3');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
