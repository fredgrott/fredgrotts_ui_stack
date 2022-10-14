// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:fcs_demo/src/presentation/material/themes/brand_text_shadows.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

final TextTheme brandLightTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 57, // Same as M3, defaults to 96 in Material2018 Typography.
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displayMedium: TextStyle(
    fontSize: 45, // Same as M3, defaults to 60 in Material2018 Typography.
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displaySmall: TextStyle(
    fontSize: 36, // Same as M3, defaults to 48 in Material2018 Typography.
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineLarge: TextStyle(
    fontSize: 32.0,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineMedium: TextStyle(
    fontSize: 28, // Same as M3, defaults to 34 in Material2018 Typography.
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineSmall: TextStyle(
    fontSize: 24.0,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleMedium: TextStyle(
    fontSize: 16.0,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleSmall: TextStyle(
    fontSize: 14.0,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  bodyLarge: TextStyle(
    fontSize: 16.0,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  bodyMedium: TextStyle(
    fontSize: 14.0,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  bodySmall: TextStyle(
    fontSize: 12.0,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  labelLarge: TextStyle(
    fontSize: 14.0,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  labelMedium: TextStyle(
    fontSize: 12.0,
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  // I chose this, I later saw it happened to match new M3 style too - cool!
  labelSmall: TextStyle(
    fontSize: 11, // Defaults to 10 in Material2018 Typography.
    letterSpacing: 0.5, // Defaults to 1.5 in Material2018 Typography.
    shadows: lightBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
);

final TextTheme brandDarkTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 57, // Same as M3, defaults to 96 in Material2018 Typography.
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displayMedium: TextStyle(
    fontSize: 45, // Same as M3, defaults to 60 in Material2018 Typography.
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displaySmall: TextStyle(
    fontSize: 36, // Same as M3, defaults to 48 in Material2018 Typography.
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineLarge: TextStyle(
    fontSize: 32.0,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineMedium: TextStyle(
    fontSize: 28, // Same as M3, defaults to 34 in Material2018 Typography.
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineSmall: TextStyle(
    fontSize: 24.0,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleMedium: TextStyle(
    fontSize: 16.0,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleSmall: TextStyle(
    fontSize: 14.0,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  bodyLarge: TextStyle(
    fontSize: 16.0,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  bodyMedium: TextStyle(
    fontSize: 14.0,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  bodySmall: TextStyle(
    fontSize: 12.0,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  labelLarge: TextStyle(
    fontSize: 14.0,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  labelMedium: TextStyle(
    fontSize: 12.0,
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  // I chose this, I later saw it happened to match new M3 style too - cool!
  labelSmall: TextStyle(
    fontSize: 11, // Defaults to 10 in Material2018 Typography.
    letterSpacing: 0.5, // Defaults to 1.5 in Material2018 Typography.
    shadows: darkBrandShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
);
