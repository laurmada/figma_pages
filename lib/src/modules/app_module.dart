import 'package:figma_screens/pages/home_page.dart';
import 'package:figma_screens/src/modules/sign_in_module.dart';
import 'package:figma_screens/src/modules/sign_up_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomePage());
    r.module('/signup', module: SignupModule());
    r.module('/signin', module: SigninModule());
  }
}
