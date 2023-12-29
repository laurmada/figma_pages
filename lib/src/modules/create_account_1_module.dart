import 'package:figma_screens/pages/create_account_1_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CreateAccount1Module extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const CreateAccount1());
  }
}
