import 'package:figma_screens/pages/home_page.dart';
import 'package:figma_screens/pages/step_1_page.dart';
import 'package:figma_screens/pages/step_2_page.dart';
import 'package:figma_screens/pages/step_3_page.dart';
import 'package:figma_screens/pages/step_4_page.dart';
import 'package:figma_screens/pages/step_5_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignupModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/step1', child: (context) => const Step1Page());
    r.child('/step2', child: (context) => const Step2Page());
    r.child('/step3', child: (context) => const Step3Page());
    r.child('/step4', child: (context) => const Step4Page());
    r.child('/step5', child: (context) => const Step5Page());
  }
}
