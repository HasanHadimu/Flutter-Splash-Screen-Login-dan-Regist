import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/configs/theme/app_colors.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const BasicAppButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 16), // Gaya warna tombol
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Sudut membulat
        ),
      ),
      child: Text(title),
    );
  }
}
