import 'package:mobx/mobx.dart';
part 'create_account_store.g.dart';

class CreateAccountStore = _CreateAccountStore with _$CreateAccountStore;

abstract class _CreateAccountStore with Store {
  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @observable
  bool isChecked = false;

  @action
  void toggleCheckbox() {
    isChecked = !isChecked;
  }

  @observable
  String firstName = '';

  @observable
  String lastName = '';

  @observable
  String userName = '';

  @action
  void setUsername(String value) => userName = value;

  @action
  void setFirstname(String value) => firstName = value;

  @action
  void setLastname(String value) => lastName = value;

  @observable
  String phonenumber = '';

  @action
  void setPhonenumber(String value) => phonenumber = value;

  @observable
  String selectedValue = 'Brasil';

  @computed
  bool get isValidFormStep3 =>
      userName.isNotEmpty && firstName.isNotEmpty && lastName.isNotEmpty;

  @action
  void setSelectedvalue(String value) => selectedValue = value;

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
}
