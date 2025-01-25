import 'package:flutter/material.dart';
import 'package:dashboard_mvvm_arch/core/theme/app_pallete.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Pallete.bottomNavigationBarBackground,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Pallete.backgroundColor,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 14.sp,
      ),
      titleTextStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      elevation: 0,
    ),
  );
}
