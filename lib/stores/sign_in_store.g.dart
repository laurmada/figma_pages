// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SigninStore on _SigninStore, Store {
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_SigninStore.isPasswordValid'))
          .value;
  Computed<bool>? _$isformValidComputed;

  @override
  bool get isformValid =>
      (_$isformValidComputed ??= Computed<bool>(() => super.isformValid,
              name: '_SigninStore.isformValid'))
          .value;

  late final _$emailAtom = Atom(name: '_SigninStore.email', context: context);

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
      Atom(name: '_SigninStore.password', context: context);

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

  late final _$_SigninStoreActionController =
      ActionController(name: '_SigninStore', context: context);

  @override
  void setUsername(String value) {
    final _$actionInfo = _$_SigninStoreActionController.startAction(
        name: '_SigninStore.setUsername');
    try {
      return super.setUsername(value);
    } finally {
      _$_SigninStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_SigninStoreActionController.startAction(
        name: '_SigninStore.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_SigninStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
isPasswordValid: ${isPasswordValid},
isformValid: ${isformValid}
    ''';
  }
}
