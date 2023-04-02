import 'package:flut_auth/controllers/auth.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<bool> login(BuildContext context) async {
    try {
      await Auth().loginWithEmailAndPassword(
        email: emailController.value.text,
        password: passwordController.value.text,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
