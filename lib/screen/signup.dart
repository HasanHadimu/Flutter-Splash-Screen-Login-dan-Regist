import 'package:ecommerceapp/screen/app_navigator.dart';
import 'package:ecommerceapp/screen/basic_app_button.dart';
import 'package:ecommerceapp/screen/basic_appbar.dart';
import 'package:ecommerceapp/home/pages/home_page.dart';
import 'package:ecommerceapp/screen/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/configs/theme/app_colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        title: '',
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _firstnameField(context),
            const SizedBox(height: 20),
            _lastnameField(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccount(context)
          ],
        ),
      ),
    );
  }

  // Sign-in text
  Widget _signinText(BuildContext context) {
    return const Text(
      'Create Account',
      style: TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  // Email input field
  Widget _firstnameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'First Name'),
    );
  }

  Widget _lastnameField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Last Name'),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Email Address'),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(hintText: 'Password'),
    );
  }

  // Continue button
  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const HomePage());
      },
      title: 'Continue',
    );
  }

  // "Create Account" link
  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: "Do you have an account? "),
          TextSpan(
            text: 'Sign in',
            style: const TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, const SigninPage());
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
