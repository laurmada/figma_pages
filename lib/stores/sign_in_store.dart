import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'sign_in_store.g.dart';

class SigninStore = _SigninStore with _$SigninStore;

abstract class _SigninStore with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void setUsername(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  final usernameController = TextEditingController();

  final passswordController = TextEditingController();

  @computed
  bool get isPasswordValid => password.length >= 8;

  @computed
  bool get isformValid => isPasswordValid && email.isNotEmpty;
}
