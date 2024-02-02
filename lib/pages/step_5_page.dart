import 'package:figma_screens/stores/create_account_store.dart';
import 'package:figma_screens/widgets/custom_appbar.dart';
import 'package:figma_screens/widgets/custom_progressstep_bar.dart';
import 'package:figma_screens/widgets/custom_signup_button.dart';
import 'package:figma_screens/widgets/custom_textfield.dart';
import 'package:figma_screens/widgets/custom_texticon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Step5Page extends StatelessWidget {
  const Step5Page({super.key});

  @override
  Widget build(BuildContext context) {
    CreateAccountStore createAccountStore = CreateAccountStore();

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomProgressStepBar(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(24),
                width: 74.25,
                height: 4,
                borderRadius: BorderRadius.circular(2),
                color_1: const Color(0xFFF49819),
                color_2: const Color(0xFFF49819),
                color_3: const Color(0xFFF49819),
                color_4: const Color(0xFFF49819),
                sizedBoxWidth: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
                child: CustomTextIcon(
                  svgPicture: SvgPicture.asset(
                    'assets/icons/Email.svg',
                  ),
                  inputText: 'Your account has been\ncreated successfully',
                  fontColor: const Color(0xFFF49819),
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                  fontFamily: 'Cabin',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
                child: CustomTextfield(
                  onChanged: createAccountStore.setConfirmemail,
                  controller: createAccountStore.confirmEmailController,
                  hintColor: Colors.white,
                  hintFamily: 'Cabin',
                  hintSize: 20,
                  hintWeight: FontWeight.w400,
                  hintText: 'Fulano.beltrano@gmail.com',
                  obscure: false,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textInput: 'Check your e-mail',
                  fontColor: const Color(0xFFC3C4C6),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Cabin',
                  textAlign: TextAlign.center,
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
                padding:
                    const EdgeInsets.only(right: 24, left: 24, bottom: 127),
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
                    CustomSignUpButton(
                        width: 327,
                        height: 48,
                        borderRadius: BorderRadius.circular(6),
                        inputText: 'Send Again',
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontColor: const Color(0xFFA5A5A9),
                        onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
