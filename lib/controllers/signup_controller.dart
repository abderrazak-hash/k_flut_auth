import 'package:flut_auth/controllers/auth.dart';
import 'package:flutter/material.dart';

class SingupController extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController(),
      confirmPasswordController = TextEditingController();

  Future<bool> signup(BuildContext context) async {
  
    if (confirmPasswordController.value.text == passwordController.value.text) {
      try {
        await Auth().createUserWithEmailAndPassword(
          email: emailController.value.text,
          password: passwordController.value.text,
        );
        return true;
      } catch (e) {
        return false;
      }
    }
    return false;
  }
}
