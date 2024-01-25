import 'package:figma_screens/stores/create_account_store.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthManager {
  // creating firebaseauth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;
  CreateAccountStore createAccountStore = CreateAccountStore();

  // declaring variable type User
  User? user;

  // creating async void function which store users email and password in user variable
  Future<void> createUserEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
      // verify and display a message in case password is weak or email is already in use.
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('the password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exits for that email.');
      }
    }
  }

  String getUID() {
    return user?.uid ?? '';
  }

  Future<void> refreshUser() async {
    user = await _auth.currentUser;
  }

  Future<void> signInWithEmailandPassword(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  // creating async void function that signout user account
  Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
  }
}
