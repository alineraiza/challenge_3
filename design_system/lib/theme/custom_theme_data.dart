import 'package:design_system/theme/theme_extension/custom_theme_colors.dart';
import 'package:design_system/theme/theme_extension/custom_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData customThemeData() => ThemeData.dark().copyWith(
      extensions: <ThemeExtension<dynamic>>[
        CustomThemeColors(
          primary: const Color(0xffF3FD88),
          onPrimary: const Color(0xff919953),
          secondary: const Color(0xff5852D6),
          onSecondary: const Color(0xff8885ED),
          tertiary: const Color(0xffB785F5),
          surface: const Color(0xffffffff),
          background: const Color(0xff20232B),
          onBackground: const Color(0xff787C84),
          notification: const Color(0xff5750B0),
          outline: const Color(0xff16171B),
          status: const Color(0xffA4C85F),
        ),
        CustomTextStyle(
          titleMedium: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            // color: ,
          ),
          titleSmall: GoogleFonts.roboto(
            fontSize: 14,
          ),
          bodySmall: GoogleFonts.roboto(
            fontSize: 12,
          ),
        ),
      ],
    );
