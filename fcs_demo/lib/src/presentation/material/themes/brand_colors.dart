// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

// Brand colors.
const Color _primaryBrandColor = Color(0xff620e16);
const Color _secondaryBrandColor = Color(0xff7a2f04);
const Color _tertiaryBrandColor = Color(0xffaca1a1);

const Color lightShadowBrandColor = Color(0xFFA0C2ED);
const Color darkShadowBrandColor = Color(0xFF3873BA);

// Additional brand colors.
ColorScheme _moreBrandColorsLightSource = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff620e16),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xfff77f7f),
  onPrimaryContainer: Color(0xff281717),
  secondary: Color(0xff7a2f04),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffdd7e51),
  onSecondaryContainer: Color(0xfffff3ec),
  tertiary: Color(0xffaca1a1),
  onTertiary: Color(0xff000000),
  tertiaryContainer: Color(0xffddcfcf),
  onTertiaryContainer: Color(0xff252323),
  error: Color(0xffb00020),
  onError: Color(0xffffffff),
  errorContainer: Color(0xfffcd8df),
  onErrorContainer: Color(0xff282526),
  background: Color(0xfff2ecec),
  onBackground: Color(0xff121212),
  surface: Color(0xfff8f5f5),
  onSurface: Color(0xff090909),
  surfaceVariant: Color(0xfff2ecec),
  onSurfaceVariant: Color(0xff121212),
  outline: Color(0xff5f5f5f),
  shadow: Color(0xff000000),
  inverseSurface: Color(0xff141011),
  onInverseSurface: Color(0xfff5f5f5),
  inversePrimary: Color(0xffd6999e),
  surfaceTint: Color(0xff620e16),
);

// Vars.
Color userPrimaryLightColor = const Color(0xff6200ee);

// Brand main colors.
Color mainBrandPrimaryLightColor = Color(
    Blend.harmonize(userPrimaryLightColor.value, _primaryBrandColor.value,),);
Color mainBrandSecondaryLightColor = Color(
    Blend.harmonize(userPrimaryLightColor.value, _secondaryBrandColor.value,),);
Color mainBrandTertiaryLightColor = Color(
    Blend.harmonize(userPrimaryLightColor.value, _tertiaryBrandColor.value,),);

// more brand colors hue shifted by either system user color or dynamic user color
// works via keeping the input design color a mutated variable as when
// interfacing with dynamic color package we make that output equal to the
// user color variable. Nice way to make it work code wise with the goal
// of being more design correct than Google's way of destroying brand
// colors in the main portion of the app palette.
Color moreBrandPrimaryLightColor = Color(Blend.harmonize(
    userPrimaryLightColor.value, _moreBrandColorsLightSource.primary.value,),);
Color moreBrandOnPrimaryLightColor = Color(Blend.harmonize(
    userPrimaryLightColor.value, _moreBrandColorsLightSource.onPrimary.value,),);
Color moreBrandSecondaryLightColor = Color(Blend.harmonize(
    userPrimaryLightColor.value, _moreBrandColorsLightSource.secondary.value,),);
Color moreBrandOnSecondaryLightColor = Color(Blend.harmonize(
    userPrimaryLightColor.value,
    _moreBrandColorsLightSource.onSecondary.value,),);
Color moreBrandTertiaryLightColor = Color(Blend.harmonize(
    userPrimaryLightColor.value, _moreBrandColorsLightSource.tertiary.value,),);
Color moreBrandOnTertiaryLightColor = Color(Blend.harmonize(
    userPrimaryLightColor.value, _moreBrandColorsLightSource.onTertiary.value,),);
