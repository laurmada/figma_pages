import 'package:figma_screens/pages/home_page.dart';
import 'package:figma_screens/src/modules/create_account_1_module.dart';
import 'package:figma_screens/src/modules/create_account_2_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomePage());
    r.module('/account1', module: CreateAccount1Module());
    r.module('/account2', module: CreateAccount2Module());
  }
}
