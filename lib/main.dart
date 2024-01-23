import 'package:figma_screens/services/auth_service.dart';
import 'package:figma_screens/src/modules/app_module.dart';
import 'package:figma_screens/src/modules/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => AuthService()),
    ], child: ModularApp(module: AppModule(), child: const AppWidget())),
  );
}
