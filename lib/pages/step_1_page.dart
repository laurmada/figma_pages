import 'package:figma_screens/authentication/auth_manager.dart';
import 'package:figma_screens/database/firestore_service.dart';
import 'package:figma_screens/stores/create_account_store.dart';
import 'package:figma_screens/widgets/custom_appbar.dart';
import 'package:figma_screens/widgets/custom_checkbox.dart';
import 'package:figma_screens/widgets/custom_createaccount_message.dart';
import 'package:figma_screens/widgets/custom_progressstep_bar.dart';
import 'package:figma_screens/widgets/custom_signin_button.dart';
import 'package:figma_screens/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Step1Page extends StatefulWidget {
  const Step1Page({super.key});

  @override
  State<Step1Page> createState() => _Step1PageState();
}

class _Step1PageState extends State<Step1Page> {
  final CreateAccountStore createAccountStore = CreateAccountStore();
  final AuthManager authmanager = AuthManager();
  final FirestoreService firestoreService = FirestoreService();
  User? user;

  @override
  Widget build(BuildContext context) {
    /*String? uid = authmanager.getUID();

    final userAccount = <String, dynamic>{
      "email": createAccountStore.email,
      "password": createAccountStore.password,
      "uid": uid,
    };*/

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
      //Envolve o colum em um componente de scroll
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
                    color_1: const Color(0xFFF49819),
                    color_2: const Color(0xff44454B),
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
                    padding:
                        const EdgeInsets.only(bottom: 24, left: 24, right: 24),
                    child: CustomTextfield(
                      onChanged: createAccountStore.setEmail,
                      controller: createAccountStore.emailController,
                      obscure: false,
                      hintColor: const Color(0xFF57585E),
                      hintFamily: 'Cabin',
                      hintSize: 16,
                      hintWeight: FontWeight.w400,
                      hintText: 'Email',
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textInput: 'Email',
                      fontColor: const Color(0xFFF0F0F1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Cabin',
                      sizedBoxHeight: 8,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 24, left: 24, right: 24),
                    child: CustomTextfield(
                      onChanged: createAccountStore.setPassword,
                      controller: createAccountStore.passwordController,
                      hintColor: const Color(0xFF57585E),
                      hintFamily: 'Cabin',
                      hintSize: 16,
                      hintWeight: FontWeight.w400,
                      hintText: 'At least 8 caracters',
                      obscure: false,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textInput: 'Password',
                      fontColor: const Color(0xFFF0F0F1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Cabin',
                      sizedBoxHeight: 8,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 24, left: 24, bottom: 135),
                      child: CustomCheckbox(
                        containerHeight: 16,
                        containerWidth: 16,
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                            width: 2, color: const Color(0xFFC3C4C6)),
                        value: createAccountStore.isChecked,
                        checkColor: Colors.white,
                        onChanged: (bool? value) {
                          createAccountStore.toggleCheckbox();
                        },
                        sizedBoxWidth: 10,
                        fontSize: 16,
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.w400,
                        fontColor_1: const Color(0xFFC3C4C6),
                        fontColor_2: const Color(0xFFF49819),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: CustomSignInButton(
                      borderRadius: 6,
                      buttonColor: const Color(0xFF0064D0),
                      isDisabled: createAccountStore.isValidForm ? false : true,
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
                        await authmanager.createUserEmailAndPassword(
                            createAccountStore.email,
                            createAccountStore.password);
                        await createAccountStore.saveUserData();
                        /*DatabaseReference userRef = FirebaseDatabase.instance.ref("users").child(authmanager.getUID());
                          Map<String, dynamic> userData = {
                            "email": createAccountStore.email,
                            "password": createAccountStore.password
                          };
                          await userRef.set(userData);*/
                        createAccountStore.isValidForm
                            ? Modular.to.navigate('/signup/step2')
                            : null;
                      },
                    ),
                  ),
                ],
              ))),
    );
  }
}
