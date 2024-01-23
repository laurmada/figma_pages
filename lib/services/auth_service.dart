import 'package:figma_screens/stores/create_account_store.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  CreateAccountStore createAccountStore = CreateAccountStore();
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? usuario;
  bool isLoading = true;

  AuthService() {
    _authCheck();
  }

  _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      usuario = (user == null) ? null : user;
      isLoading = false;
    });
  }

  _getUser() {
    usuario = _auth.currentUser;
    notifyListeners();
  }

  login(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: createAccountStore.email,
          password: createAccountStore.password);
      _getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException('Email not found. Sign up');
      } else if (e.code == 'wrong-password') {
        throw AuthException('Wrong password. Try again');
      }
    }
  }

  registrar(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: createAccountStore.email,
          password: createAccountStore.password);
      _getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw AuthException('The password is weak');
      } else if (e.code == 'email-already-in-use') {
        throw AuthException('This email is already in use');
      }
    }
  }

  logout() async {
    await _auth.signOut();
    _getUser();
  }
}
