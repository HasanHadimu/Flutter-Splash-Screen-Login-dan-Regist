import 'package:ecommerceapp/core/configs/theme/app_colors.dart';
import 'package:ecommerceapp/screen/bloc/splash_cubit.dart';
import 'package:ecommerceapp/screen/bloc/splash_state.dart';
import 'package:ecommerceapp/screen/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAutenticated) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const SigninPage()));
        }
      },
      child: Scaffold(
        backgroundColor: AppColors
            .background, // Pastikan AppColors.primary sudah didefinisikan.
        body: Center(
          child: CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/logo.jpg'), // Gunakan AssetImage.
            radius: 50, // Sesuaikan ukuran lingkaran.
          ),
        ),
      ),
    );
  }
}
