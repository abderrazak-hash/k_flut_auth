import 'package:flut_auth/constants.dart';
import 'package:flut_auth/controllers/login_controller.dart';
import 'package:flut_auth/screens/home_screen.dart';
import 'package:flut_auth/screens/signup_screen.dart';
import 'package:flut_auth/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(
      builder: (context, loginController, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/dash.png'),
                    const Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 25,
                        color: altClr,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12.0),
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Input(
                        controller: loginController.emailController,
                        hintText: 'dash@example.com',
                      ),
                      const SizedBox(height: 12.0),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Input(
                        controller: loginController.passwordController,
                        hintText: '*********',
                        obscureText: true,
                      ),
                      const SizedBox(height: 12.0),
                      const SizedBox(height: 12.0),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Button(
                  width: 250,
                  height: 45.0,
                  label: 'Login',
                  onPressed: () async {
                    bool res = await loginController.login(context);
                    if (res) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    } else {}
                  },
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?  ",
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Signup",
                        style: TextStyle(
                          color: altClr,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
