import 'package:flut_auth/constants.dart';
import 'package:flut_auth/controllers/signup_controller.dart';
import 'package:flut_auth/screens/home_screen.dart';
import 'package:flut_auth/screens/login_screen.dart';
import 'package:flut_auth/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SingupController>(
      builder: (context, singupController, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello On',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Dash app',
                          style: TextStyle(
                            fontSize: 25,
                            color: altClr,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/dash.png')
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
                        controller: singupController.emailController,
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
                        controller: singupController.passwordController,
                        hintText: '*********',
                        obscureText: true,
                      ),
                      const SizedBox(height: 12.0),
                      const Text(
                        'Confirm password',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Input(
                        controller: singupController.confirmPasswordController,
                        hintText: '*********',
                        obscureText: true,
                      ),
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
                  label: 'Sign up',
                  onPressed: () async {
                    bool res = await singupController.signup(context);
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
                      "Already have an account?  ",
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
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
