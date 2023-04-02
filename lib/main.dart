import 'package:firebase_core/firebase_core.dart';
import 'package:flut_auth/controllers/login_controller.dart';
import 'package:flut_auth/controllers/signup_controller.dart';
import 'package:flut_auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const TeleWorkApp());
}

class TeleWorkApp extends StatelessWidget {
  const TeleWorkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginController>(
          create: (context) => LoginController(),
        ),
        ChangeNotifierProvider<SingupController>(
          create: (context) => SingupController(),
        ),
      ],
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FlutterAuthApp(),
        );
      },
    );
  }
}

class FlutterAuthApp extends StatelessWidget {
  const FlutterAuthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginScreen();
  }
}
