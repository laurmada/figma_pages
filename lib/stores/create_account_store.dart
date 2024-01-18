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

  @computed
  bool get isEmailValid =>
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
          .hasMatch(email);

  @computed
  bool get isPasswordValid => password.length >= 8;

  @computed
  bool get isValidForm => isEmailValid && isPasswordValid && isChecked;
}
