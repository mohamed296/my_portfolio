import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/size.dart';

/// this class is used to set the app theme data and colors for the app
class AppTheme {
  /// this method is used to get the app theme data
  static ThemeData get appTheme => ThemeData(
        scaffoldBackgroundColor: AppColor.backgroundColor,
        brightness: Brightness.light,
        useMaterial3: false,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 0,
          iconTheme: IconThemeData(color: AppColor.editProfileTextColor),
          titleTextStyle: GoogleFonts.rubik(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: AppColor.editProfileTextColor,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColor.backgroundColor,
          foregroundColor: AppColor.primaryColor,
          elevation: 4,
          splashColor: AppColor.primaryColor,
          hoverColor: AppColor.primaryColor,
          focusColor: AppColor.primaryColor,
          hoverElevation: 4,
          focusElevation: 4,
          iconSize: 36,
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(AppColor.primaryColor),
          overlayColor: MaterialStateProperty.all(AppColor.primaryColor),
          splashRadius: 24,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: AppColor.navBarColor,
          enableFeedback: true,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: AppColor.primaryColor),
          unselectedIconTheme: const IconThemeData(color: Color(0xff94A3B8)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(designRadius18),
            ),
            padding: const EdgeInsets.all(12),
            textStyle: GoogleFonts.rubik(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            shadowColor: const Color(0xff6C5DD3),
            elevation: 4,
            foregroundColor: Colors.white,
            maximumSize: Size(width, 56),
            disabledForegroundColor: Colors.white,
            disabledBackgroundColor: const Color(0xff94A3B8),
            backgroundColor: AppColor.primaryColor,
          ),
        ),
        cupertinoOverrideTheme: CupertinoThemeData(
          primaryColor: AppColor.primaryColor,
          barBackgroundColor: AppColor.backgroundColor,
          scaffoldBackgroundColor: AppColor.backgroundColor,
          textTheme: CupertinoTextThemeData(
            navTitleTextStyle: TextStyle(
              color: AppColor.editProfileTextColor,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          applyThemeToAll: true,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColor.formColor,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: const EdgeInsets.all(14),
          helperMaxLines: 6,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(designRadius18),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(designRadius18),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(designRadius18),
            borderSide: BorderSide(
              color: AppColor.formColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(designRadius18),
            borderSide: BorderSide(
              color: AppColor.redColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(designRadius18),
            borderSide: BorderSide(
              color: AppColor.redColor,
            ),
          ),
          errorStyle: GoogleFonts.rubik(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColor.redColor,
          ),
          hintStyle: GoogleFonts.rubik(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColor.textGrayColor,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(designRadius18),
            ),
            side: BorderSide(color: AppColor.primaryColor),
            padding: const EdgeInsets.all(12),
            textStyle:
                GoogleFonts.rubik(fontSize: 16, color: AppColor.primaryColor),
            foregroundColor: AppColor.primaryColor,
            minimumSize: Size(width, 48),
          ),
        ),
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColor.primaryColor,
          onPrimary: Colors.black,
          secondary: AppColor.secondaryColor,
          onSecondary: AppColor.secondaryColor,
          error: AppColor.redColor,
          onError: AppColor.backgroundColor,
          background: AppColor.backgroundColor,
          onBackground: Colors.black,
          surface: AppColor.backgroundColor,
          onSurface: Colors.black,
        ),
        textTheme: TextTheme(
          // body
          bodyLarge: GoogleFonts.rubik(
            fontSize: 16,
          ),
          bodyMedium: GoogleFonts.rubik(fontSize: 14),
          bodySmall: GoogleFonts.rubik(fontSize: 12),
          // headline
          headlineLarge: GoogleFonts.rubik(fontSize: 32),
          headlineMedium: GoogleFonts.rubik(fontSize: 28),
          headlineSmall: GoogleFonts.rubik(fontSize: 24),
          // label
          labelLarge: GoogleFonts.rubik(fontSize: 14),
          labelMedium: GoogleFonts.rubik(fontSize: 12),
          labelSmall: GoogleFonts.rubik(fontSize: 11),
          // display
          displayLarge: GoogleFonts.rubik(fontSize: 57),
          displayMedium: GoogleFonts.rubik(fontSize: 45),
          displaySmall: GoogleFonts.rubik(fontSize: 36),
          // title
          titleLarge: GoogleFonts.rubik(fontSize: 22),
          titleMedium: GoogleFonts.rubik(fontSize: 16),
          titleSmall: GoogleFonts.rubik(fontSize: 14),
        ),
      );
}
