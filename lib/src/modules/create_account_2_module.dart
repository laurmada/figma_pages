import 'package:figma_screens/pages/create_account_2_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CreateAccount2Module extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const CreateAccount2());
  }
}
