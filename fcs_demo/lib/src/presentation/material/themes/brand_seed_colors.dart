// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:fcs_demo/src/presentation/material/themes/brand_colors.dart';
// ignore_for_file: avoid_redundant_argument_values

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

final ColorScheme mainBrandColorSchemeLight = SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  primaryKey: mainBrandPrimaryLightColor,
  secondaryKey: mainBrandSecondaryLightColor,
  tertiaryKey: mainBrandTertiaryLightColor,
  tones: FlexTones.vividSurfaces(Brightness.light),
);

final ColorScheme mainBrandColorSchemeDark = SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  primaryKey: mainBrandPrimaryLightColor,
  secondaryKey: mainBrandSecondaryLightColor,
  tertiaryKey: mainBrandTertiaryLightColor,
  tones: FlexTones.vividSurfaces(Brightness.dark),
);

final ColorScheme moreBrandColorSchemeLight = SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  primaryKey: moreBrandPrimaryLightColor,
  secondaryKey: moreBrandSecondaryLightColor,
  tertiaryKey: moreBrandTertiaryLightColor,
  tones: FlexTones.vividSurfaces(Brightness.light),
);

final ColorScheme moreBrandColorSchemeDark = SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  primaryKey: moreBrandPrimaryLightColor,
  secondaryKey: moreBrandSecondaryLightColor,
  tertiaryKey: moreBrandTertiaryLightColor,
  tones: FlexTones.vividSurfaces(Brightness.dark),
);
//
// ignore: prefer-correct-identifier-length
final ColorScheme mainBrandColorSchemeLightHighContrast =
    SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  primaryKey: mainBrandPrimaryLightColor,
  secondaryKey: mainBrandSecondaryLightColor,
  tertiaryKey: mainBrandTertiaryLightColor,
  tones: FlexTones.ultraContrast(Brightness.light),
);
//
// ignore: prefer-correct-identifier-length
final ColorScheme mainBrandColorSchemeDarkHighContrast =
    SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  primaryKey: mainBrandPrimaryLightColor,
  secondaryKey: mainBrandSecondaryLightColor,
  tertiaryKey: mainBrandTertiaryLightColor,
  tones: FlexTones.ultraContrast(Brightness.dark),
);
//
// ignore: prefer-correct-identifier-length
final ColorScheme moreBrandColorSchemeLightHighContrast =
    SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  primaryKey: moreBrandPrimaryLightColor,
  secondaryKey: moreBrandSecondaryLightColor,
  tertiaryKey: moreBrandTertiaryLightColor,
  tones: FlexTones.ultraContrast(Brightness.light),
);
//
// ignore: prefer-correct-identifier-length
final ColorScheme moreBrandColorSchemeDarkHighContrast =
    SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  primaryKey: moreBrandPrimaryLightColor,
  secondaryKey: moreBrandSecondaryLightColor,
  tertiaryKey: moreBrandTertiaryLightColor,
  tones: FlexTones.ultraContrast(Brightness.dark),
);
