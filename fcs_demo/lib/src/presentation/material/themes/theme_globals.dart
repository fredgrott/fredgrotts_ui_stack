// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:fcs_demo/src/presentation/material/themes/brand_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Gist: My theme approach is to do 4 themes(light,dark, lighHC, darkHC) and
//       detect the mode in MaterialApp(with FPW in PlatformApp) and then dynamically
//       switch themes.

bool isHighContrast =
    SchedulerBinding.instance.window.accessibilityFeatures.highContrast;

Brightness appBrightness = SchedulerBinding.instance.window.platformBrightness;
bool isDarkMode = appBrightness == Brightness.dark;

ThemeData materialThemeSwtich() {
  if (!isDarkMode && !isHighContrast) {
    return brandThemeDataLight;
  }
  if (!isDarkMode && isHighContrast) {
    return brandThemeDataLightHighContrast;
  }
  if (isDarkMode && isHighContrast) {
    return brandThemeDataDarkHighContrast;
  }

  return brandThemeDataDark;
}

//MaterialBasedCupertinoThemeData cupertinoThemeSwitch() {
 // if (!isDarkMode && !isHighContrast) {
   // return brandMaterialBasedCupertinoThemeDataLight;
  //}
  //if (!isDarkMode && isHighContrast) {
   // return brandMaterialBasedCupertinoThemeDataLightHighContrast;
  //}
  //if (isDarkMode && isHighContrast) {
   // return brandMaterialBasedCupertinoThemeDataDarkHighContrast;
  //}

 // return brandMaterialBasedCupertinoThemeDataDark;
//}
