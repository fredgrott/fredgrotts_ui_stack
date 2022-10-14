// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class BrandMoreColorsLight extends ThemeExtension<BrandMoreColorsLight> {
  const BrandMoreColorsLight({
    this.morePrimaryColor,
    this.moreOnPrimaryColor,
    this.moreSecondaryColor,
    this.moreOnSecondaryColor,
    this.moreTertiaryColor,
    this.moreOnTertiaryColor,
  });
  final Color? morePrimaryColor;
  final Color? moreOnPrimaryColor;
  final Color? moreSecondaryColor;
  final Color? moreOnSecondaryColor;
  final Color? moreTertiaryColor;
  final Color? moreOnTertiaryColor;

  @override
  BrandMoreColorsLight copyWith({
    Color? morePrimaryColor,
    Color? moreOnPrimaryColor,
    Color? moreSecondaryColor,
    Color? moreOnSecondaryColor,
    Color? moreTertiaryColor,
    Color? moreOnTertiaryColor,
  }) =>
      BrandMoreColorsLight(
        morePrimaryColor: morePrimaryColor ?? this.morePrimaryColor,
        moreOnPrimaryColor: moreOnPrimaryColor ?? this.moreOnPrimaryColor,
        moreSecondaryColor: moreSecondaryColor ?? this.moreSecondaryColor,
        moreOnSecondaryColor: moreOnSecondaryColor ?? this.moreOnSecondaryColor,
        moreTertiaryColor: moreTertiaryColor ?? this.moreTertiaryColor,
        moreOnTertiaryColor: moreOnTertiaryColor ?? this.moreOnTertiaryColor,
      );

  @override
  BrandMoreColorsLight lerp(
      ThemeExtension<BrandMoreColorsLight>? other, double t,) {
    if (other is! BrandMoreColorsLight) {
      return this;
    }

    return BrandMoreColorsLight(
      morePrimaryColor: Color.lerp(morePrimaryColor, other.morePrimaryColor, t,),
      moreOnPrimaryColor: Color.lerp(moreOnPrimaryColor, other.moreOnPrimaryColor, t,),
      moreSecondaryColor: Color.lerp(moreSecondaryColor, other.moreSecondaryColor, t,),
      moreOnSecondaryColor: Color.lerp(moreOnSecondaryColor, other.moreOnSecondaryColor, t,),
      moreTertiaryColor: Color.lerp(moreTertiaryColor, other.moreTertiaryColor, t,),
      moreOnTertiaryColor: Color.lerp(moreOnTertiaryColor, other.moreOnTertiaryColor, t,),
    );
  }
}

class BrandMoreColorsDark extends ThemeExtension<BrandMoreColorsDark> {
  const BrandMoreColorsDark({
    this.morePrimaryColor,
    this.moreOnPrimaryColor,
    this.moreSecondaryColor,
    this.moreOnSecondaryColor,
    this.moreTertiaryColor,
    this.moreOnTertiaryColor,
  });
  final Color? morePrimaryColor;
  final Color? moreOnPrimaryColor;
  final Color? moreSecondaryColor;
  final Color? moreOnSecondaryColor;
  final Color? moreTertiaryColor;
  final Color? moreOnTertiaryColor;

  @override
  BrandMoreColorsDark copyWith({
    Color? morePrimaryColor,
    Color? moreOnPrimaryColor,
    Color? moreSecondaryColor,
    Color? moreOnSecondaryColor,
    Color? moreTertiaryColor,
    Color? moreOnTertiaryColor,
  }) =>
      BrandMoreColorsDark(
        morePrimaryColor: morePrimaryColor ?? this.morePrimaryColor,
        moreOnPrimaryColor: moreOnPrimaryColor ?? this.moreOnPrimaryColor,
        moreSecondaryColor: moreSecondaryColor ?? this.moreSecondaryColor,
        moreOnSecondaryColor: moreOnSecondaryColor ?? this.moreOnSecondaryColor,
        moreTertiaryColor: moreTertiaryColor ?? this.moreTertiaryColor,
        moreOnTertiaryColor: moreOnTertiaryColor ?? this.moreOnTertiaryColor,
      );

  @override
  BrandMoreColorsDark lerp(
      ThemeExtension<BrandMoreColorsDark>? other, double t,) {
    if (other is! BrandMoreColorsDark) {
      return this;
    }

    return BrandMoreColorsDark(
      morePrimaryColor: Color.lerp(morePrimaryColor, other.morePrimaryColor, t,),
      moreOnPrimaryColor:
          Color.lerp(moreOnPrimaryColor, other.moreOnPrimaryColor, t,),
      moreSecondaryColor:
          Color.lerp(moreSecondaryColor, other.moreSecondaryColor, t,),
      moreOnSecondaryColor:
          Color.lerp(moreOnSecondaryColor, other.moreOnSecondaryColor, t,),
      moreTertiaryColor:
          Color.lerp(moreTertiaryColor, other.moreTertiaryColor, t,),
      moreOnTertiaryColor:
          Color.lerp(moreOnTertiaryColor, other.moreOnTertiaryColor, t,),
    );
  }
}

class BrandMoreColorsLightHighContrast
    extends ThemeExtension<BrandMoreColorsLightHighContrast> {
      const BrandMoreColorsLightHighContrast({
    this.morePrimaryColor,
    this.moreOnPrimaryColor,
    this.moreSecondaryColor,
    this.moreOnSecondaryColor,
    this.moreTertiaryColor,
    this.moreOnTertiaryColor,
  });
  final Color? morePrimaryColor;
  final Color? moreOnPrimaryColor;
  final Color? moreSecondaryColor;
  final Color? moreOnSecondaryColor;
  final Color? moreTertiaryColor;
  final Color? moreOnTertiaryColor;

  @override
  BrandMoreColorsLightHighContrast copyWith({
    Color? morePrimaryColor,
    Color? moreOnPrimaryColor,
    Color? moreSecondaryColor,
    Color? moreOnSecondaryColor,
    Color? moreTertiaryColor,
    Color? moreOnTertiaryColor,
  }) =>
      BrandMoreColorsLightHighContrast(
        morePrimaryColor: morePrimaryColor ?? this.morePrimaryColor,
        moreOnPrimaryColor: moreOnPrimaryColor ?? this.moreOnPrimaryColor,
        moreSecondaryColor: moreSecondaryColor ?? this.moreSecondaryColor,
        moreOnSecondaryColor: moreOnSecondaryColor ?? this.moreOnSecondaryColor,
        moreTertiaryColor: moreTertiaryColor ?? this.moreTertiaryColor,
        moreOnTertiaryColor: moreOnTertiaryColor ?? this.moreOnTertiaryColor,
      );

  @override
  BrandMoreColorsLightHighContrast lerp(
      ThemeExtension<BrandMoreColorsLightHighContrast>? other, double t,) {
    if (other is! BrandMoreColorsLightHighContrast) {
      return this;
    }

    return BrandMoreColorsLightHighContrast(
      morePrimaryColor: Color.lerp(morePrimaryColor, other.morePrimaryColor, t,),
      moreOnPrimaryColor:
          Color.lerp(moreOnPrimaryColor, other.moreOnPrimaryColor, t,),
      moreSecondaryColor:
          Color.lerp(moreSecondaryColor, other.moreSecondaryColor, t,),
      moreOnSecondaryColor:
          Color.lerp(moreOnSecondaryColor, other.moreOnSecondaryColor, t,),
      moreTertiaryColor:
          Color.lerp(moreTertiaryColor, other.moreTertiaryColor, t,),
      moreOnTertiaryColor:
          Color.lerp(moreOnTertiaryColor, other.moreOnTertiaryColor, t,),
    );
  }
    }

class BrandMoreColorsDarkHighContrast
    extends ThemeExtension<BrandMoreColorsDarkHighContrast> {
      const BrandMoreColorsDarkHighContrast({
    this.morePrimaryColor,
    this.moreOnPrimaryColor,
    this.moreSecondaryColor,
    this.moreOnSecondaryColor,
    this.moreTertiaryColor,
    this.moreOnTertiaryColor,
  });
  final Color? morePrimaryColor;
  final Color? moreOnPrimaryColor;
  final Color? moreSecondaryColor;
  final Color? moreOnSecondaryColor;
  final Color? moreTertiaryColor;
  final Color? moreOnTertiaryColor;

  @override
  BrandMoreColorsDarkHighContrast copyWith({
    Color? morePrimaryColor,
    Color? moreOnPrimaryColor,
    Color? moreSecondaryColor,
    Color? moreOnSecondaryColor,
    Color? moreTertiaryColor,
    Color? moreOnTertiaryColor,
  }) =>
      BrandMoreColorsDarkHighContrast(
        morePrimaryColor: morePrimaryColor ?? this.morePrimaryColor,
        moreOnPrimaryColor: moreOnPrimaryColor ?? this.moreOnPrimaryColor,
        moreSecondaryColor: moreSecondaryColor ?? this.moreSecondaryColor,
        moreOnSecondaryColor: moreOnSecondaryColor ?? this.moreOnSecondaryColor,
        moreTertiaryColor: moreTertiaryColor ?? this.moreTertiaryColor,
        moreOnTertiaryColor: moreOnTertiaryColor ?? this.moreOnTertiaryColor,
      );

  @override
  BrandMoreColorsDarkHighContrast lerp(
      ThemeExtension<BrandMoreColorsDarkHighContrast>? other, double t,) {
    if (other is! BrandMoreColorsDarkHighContrast) {
      return this;
    }

    return BrandMoreColorsDarkHighContrast(
      morePrimaryColor: Color.lerp(morePrimaryColor, other.morePrimaryColor, t,),
      moreOnPrimaryColor:
          Color.lerp(moreOnPrimaryColor, other.moreOnPrimaryColor, t,),
      moreSecondaryColor:
          Color.lerp(moreSecondaryColor, other.moreSecondaryColor, t,),
      moreOnSecondaryColor:
          Color.lerp(moreOnSecondaryColor, other.moreOnSecondaryColor, t,),
      moreTertiaryColor:
          Color.lerp(moreTertiaryColor, other.moreTertiaryColor, t,),
      moreOnTertiaryColor:
          Color.lerp(moreOnTertiaryColor, other.moreOnTertiaryColor, t,),
    );
  }
    }
