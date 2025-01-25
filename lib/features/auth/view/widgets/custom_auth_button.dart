import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.loading = false, // Default value for loading
    this.useOpacity = false, // Default value for useOpacity
  });

  final String title; // Button text
  final VoidCallback onPressed; // Button click callback
  final bool loading; // Controls loading state
  final bool useOpacity; // Whether to apply opacity to background color

  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color(0xFF9747FF);
    // If loading, slightly darker background, else normal background.
    // If useOpacity is true, apply transparency.
    Color backgroundColor = loading
        ? const Color(0xFF8339CC).withOpacity(useOpacity ? 0.5 : 1.0)
        : baseColor.withOpacity(useOpacity ? 0.5 : 1.0);

    return GestureDetector(
      onTap: loading ? null : onPressed, // Disable click when loading
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.r), // Responsive border radius
        ),
        padding:
            EdgeInsets.symmetric(vertical: 16.h), // Responsive button height
        alignment: Alignment.center,
        child: loading
            ? SizedBox(
                width: 20.w, // Responsive loading spinner size
                height: 20.w, // Keep it square
                child: const CircularProgressIndicator(
                  color: Colors.white, // Loading spinner color
                  strokeWidth: 2, // Spinner thickness
                ),
              )
            : Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp, // Responsive font size
                  fontWeight: FontWeight.w600,
                  color: Colors.white, // Text color
                ),
              ),
      ),
    );
  }
}
