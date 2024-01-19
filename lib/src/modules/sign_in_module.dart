import 'package:figma_screens/pages/home_page.dart';
import 'package:figma_screens/pages/sign_in_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SigninModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/signinpage', child: (context) => const SignInPage());
  }
}
