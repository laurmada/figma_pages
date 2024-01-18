// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateAccountStore on _CreateAccountStore, Store {
  Computed<bool>? _$isPhonenumberValidComputed;

  @override
  bool get isPhonenumberValid => (_$isPhonenumberValidComputed ??=
          Computed<bool>(() => super.isPhonenumberValid,
              name: '_CreateAccountStore.isPhonenumberValid'))
      .value;
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_CreateAccountStore.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_CreateAccountStore.isPasswordValid'))
          .value;
  Computed<bool>? _$isValidFormComputed;

  @override
  bool get isValidForm =>
      (_$isValidFormComputed ??= Computed<bool>(() => super.isValidForm,
              name: '_CreateAccountStore.isValidForm'))
          .value;

  late final _$emailAtom =
      Atom(name: '_CreateAccountStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_CreateAccountStore.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$isCheckedAtom =
      Atom(name: '_CreateAccountStore.isChecked', context: context);

  @override
  bool get isChecked {
    _$isCheckedAtom.reportRead();
    return super.isChecked;
  }

  @override
  set isChecked(bool value) {
    _$isCheckedAtom.reportWrite(value, super.isChecked, () {
      super.isChecked = value;
    });
  }

  late final _$phonenumberAtom =
      Atom(name: '_CreateAccountStore.phonenumber', context: context);

  @override
  String get phonenumber {
    _$phonenumberAtom.reportRead();
    return super.phonenumber;
  }

  @override
  set phonenumber(String value) {
    _$phonenumberAtom.reportWrite(value, super.phonenumber, () {
      super.phonenumber = value;
    });
  }

  late final _$selectedValueAtom =
      Atom(name: '_CreateAccountStore.selectedValue', context: context);

  @override
  String get selectedValue {
    _$selectedValueAtom.reportRead();
    return super.selectedValue;
  }

  @override
  set selectedValue(String value) {
    _$selectedValueAtom.reportWrite(value, super.selectedValue, () {
      super.selectedValue = value;
    });
  }

  late final _$_CreateAccountStoreActionController =
      ActionController(name: '_CreateAccountStore', context: context);

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_CreateAccountStoreActionController.startAction(
        name: '_CreateAccountStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_CreateAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_CreateAccountStoreActionController.startAction(
        name: '_CreateAccountStore.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_CreateAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleCheckbox() {
    final _$actionInfo = _$_CreateAccountStoreActionController.startAction(
        name: '_CreateAccountStore.toggleCheckbox');
    try {
      return super.toggleCheckbox();
    } finally {
      _$_CreateAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhonenumber(String value) {
    final _$actionInfo = _$_CreateAccountStoreActionController.startAction(
        name: '_CreateAccountStore.setPhonenumber');
    try {
      return super.setPhonenumber(value);
    } finally {
      _$_CreateAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedvalue(String value) {
    final _$actionInfo = _$_CreateAccountStoreActionController.startAction(
        name: '_CreateAccountStore.setSelectedvalue');
    try {
      return super.setSelectedvalue(value);
    } finally {
      _$_CreateAccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
isChecked: ${isChecked},
phonenumber: ${phonenumber},
selectedValue: ${selectedValue},
isPhonenumberValid: ${isPhonenumberValid},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
isValidForm: ${isValidForm}
    ''';
  }
}
