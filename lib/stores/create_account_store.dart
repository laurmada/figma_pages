import 'package:figma_screens/database/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'create_account_store.g.dart';

class CreateAccountStore = _CreateAccountStore with _$CreateAccountStore;

final FirestoreService firestoreService = FirestoreService();

abstract class _CreateAccountStore with Store {
  @observable
  bool isChecked = false;

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String firstName = '';

  @observable
  String lastName = '';

  @observable
  String userName = '';

  @observable
  String selectedValue = '';

  @observable
  String selectedGender = '';

  @observable
  String phonenumber = '';

  @observable
  DateTime selectedDate = DateTime.now();

  @observable
  String confirmEmail = '';

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final phonenumberController = TextEditingController();

  final userNameController = TextEditingController();

  final firstNameController = TextEditingController();

  final lastNameController = TextEditingController();

  final confirmEmailController = TextEditingController();

  @action
  void setConfirmemail(String value) => confirmEmail = value;

  @action
  void setSelectedDate(DateTime value) => selectedDate = value;

  @action
  void toggleCheckbox() {
    isChecked = !isChecked;
  }

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @action
  void setUsername(String value) => userName = value;

  @action
  void setFirstname(String value) => firstName = value;

  @action
  void setLastname(String value) => lastName = value;

  @action
  void setPhonenumber(String value) => phonenumber = value;

  @action
  void setGendervalue(String value) => selectedGender = value;

  @action
  void setSelectedvalue(String value) => selectedValue = value;

  @computed
  bool get isValidFormStep3 =>
      userName.isNotEmpty && firstName.isNotEmpty && lastName.isNotEmpty;

  @computed
  bool get isPhonenumberValid => RegExp(r'^[0-9]{11}$').hasMatch(phonenumber);

  @computed
  bool get isEmailValid =>
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
          .hasMatch(email);

  @computed
  bool get isPasswordValid => password.length >= 8;

  @computed
  bool get isValidFormStep2 => isPhonenumberValid;

  @computed
  bool get isValidForm => isEmailValid && isPasswordValid && isChecked;

  @action
  Future<void> saveUserData() async {
    await firestoreService.saveUser(email, password, selectedValue, phonenumber,
        userName, firstName, lastName, selectedGender, selectedDate);
  }
}
