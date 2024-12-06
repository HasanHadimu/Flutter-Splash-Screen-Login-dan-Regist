import 'package:ecommerceapp/screen/app_navigator.dart';
import 'package:ecommerceapp/screen/basic_app_button.dart';
import 'package:ecommerceapp/screen/basic_appbar.dart';
import 'package:ecommerceapp/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/configs/theme/app_colors.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        title: '',
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 80,
        ),
        child: Column(
          children: [
            _signinText(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(context),
            const SizedBox(
              height: 20,
            ),
            _createAccount(context)
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      'Sign in',
      style: TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      //inputan password
      obscureText: true,
      decoration: InputDecoration(hintText: 'Enter Password'),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const HomePage());
      },
      title: 'Continue',
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: "Forgot Password? "),
      TextSpan(
          text: 'Reset',
          // recognizer: TopGestureRecognizer()..onTap = () {},
          style: const TextStyle(fontWeight: FontWeight.bold))
    ]));
  }
}
