import 'package:ecommerceapp/screen/app_navigator.dart';
import 'package:ecommerceapp/screen/basic_app_button.dart';
import 'package:ecommerceapp/screen/enter_password.dart';
import 'package:ecommerceapp/screen/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/configs/theme/app_colors.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  // Sign-in text
  Widget _signinText(BuildContext context) {
    return const Text(
      'Sign in',
      style: TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  // Email input field
  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Enter Email'),
    );
  }

  // Continue button
  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const EnterPasswordPage());
      },
      title: 'Continue',
    );
  }

  // "Create Account" link
  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: "Don't you have an account? "),
          TextSpan(
            text: 'Create Account',
            style: const TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, SignupPage());
                // Implement navigation to Create Account page
                // AppNavigator.push(context, const CreateAccountPage());
                print('Navigate to Create Account');
              },
          ),
        ],
      ),
    );
  }
}
