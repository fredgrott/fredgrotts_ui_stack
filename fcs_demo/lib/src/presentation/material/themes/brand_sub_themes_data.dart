// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:fcs_demo/src/presentation/material/themes/brand_seed_colors.dart';
import 'package:fcs_demo/src/presentation/material/themes/brand_text_theme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'package:flutter/material.dart';

final FlexSubThemesData brandSubThemeDataLight = FlexSubThemesData(
  interactionEffects: true,
  blendOnLevel: 0,
  blendOnColors: true,
  useFlutterDefaults: false,
  blendTextTheme: true,
  useTextTheme: true,
  defaultRadius: 4,
  buttonMinSize: const Size(
    64,
    40,
  ),
  // ButtonPadding: ,.
  thickBorderWidth: 1.0,
  thinBorderWidth: 1.0,
  textButtonRadius: 20,
  elevatedButtonRadius: 20,
  // Kept null as I am using useMaterial3 set to true.
  elevatedButtonElevation: null,
  outlinedButtonRadius: 20,
  toggleButtonsRadius: 20,
  textButtonSchemeColor: SchemeColor.primary,
  elevatedButtonSchemeColor: SchemeColor.primary,
  elevatedButtonSecondarySchemeColor: SchemeColor.secondary,
  outlinedButtonSchemeColor: SchemeColor.primary,
  // My guess of what is should be, but one could also use promaryContainer.
  outlinedButtonOutlineSchemeColor: SchemeColor.inversePrimary,
  // not needed as I do not use the depreciated button classes
  //materialButtonSchemeColor: ,
  toggleButtonsSchemeColor: SchemeColor.primary,
  switchSchemeColor: SchemeColor.secondary,
  checkboxSchemeColor: SchemeColor.secondary,
  radioSchemeColor: SchemeColor.secondary,
  unselectedToggleIsColored: false,
  inputDecoratorRadius: 20,
  inputDecoratorSchemeColor: SchemeColor.primary,
  inputDecoratorIsFilled: true,
  inputDecoratorFillColor: mainBrandColorSchemeLight.primary.withAlpha(0x0F),
  inputDecoratorBorderType: FlexInputBorderType.outline,
  inputDecoratorUnfocusedHasBorder: true,
  inputDecoratorUnfocusedBorderIsColored: true,
  fabRadius: 16,
  fabUseShape: false,
  fabSchemeColor: SchemeColor.primary,
  chipRadius: 8,
  // Set to null as I use the useMaterial3 true setting.
  chipSchemeColor: null,
  cardRadius: 12,

  popupMenuRadius: 10,

  popupMenuOpacity: 1,
  dialogRadius: 28,

  dialogBackgroundSchemeColor: SchemeColor.surface,
  timePickerDialogRadius: 28,

  snackBarBackgroundSchemeColor: SchemeColor.inversePrimary,
  appBarBackgroundSchemeColor: SchemeColor.secondary,
  appBarCenterTitle: true,
  tabBarItemSchemeColor: SchemeColor.secondary,
  tabBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
  bottomSheetRadius: 16,

  // No need for bottomnaviagtion as I am using MD3 navigationappbar.

  navigationBarLabelTextStyle: brandLightTextTheme.labelMedium,
  navigationBarSelectedLabelSize: 12,
  navigationBarUnselectedLabelSize: 12,
  navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
  navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
  navigationBarMutedUnselectedLabel: true,
  navigationBarSelectedIconSize: 24,
  navigationBarUnselectedIconSize: 24,
  navigationBarSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
  navigationBarUnselectedIconSchemeColor: SchemeColor.onSurfaceVariant,
  navigationBarMutedUnselectedIcon: true,
  navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
  navigationBarIndicatorOpacity: 0.8,
  navigationBarBackgroundSchemeColor: SchemeColor.surface,
  navigationBarOpacity: 1,
  navigationBarHeight: 62,
  navigationBarLabelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

  navigationRailLabelTextStyle: brandLightTextTheme.labelMedium,
  navigationRailSelectedLabelSize: 11,
  navigationRailUnselectedLabelSize: 11,
  navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
  // FCS changes opacity on this which is why it can be the same.
  navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
  navigationRailMutedUnselectedLabel: true,
  navigationRailSelectedIconSize: 24,
  navigationRailUnselectedIconSize: 24,
  navigationRailSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
  navigationRailUnselectedIconSchemeColor: SchemeColor.onSurfaceVariant,
  navigationRailMutedUnselectedIcon: true,
  navigationRailUseIndicator: true,
  navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
  // We do not know yet what MD3 will have, this my best guess.
  navigationRailIndicatorOpacity: 0.1,
  navigationRailBackgroundSchemeColor: SchemeColor.background,
  navigationRailOpacity: 1,

  navigationRailLabelType: NavigationRailLabelType.all,
  // My best guess.
  navigationRailGroupAlignment: 0.5,
);

final FlexSubThemesData brandSubThemeDataDark = FlexSubThemesData(
  interactionEffects: true,
  blendOnLevel: 0,
  blendOnColors: true,
  useFlutterDefaults: false,
  blendTextTheme: true,
  useTextTheme: true,
  defaultRadius: 4,
  buttonMinSize: const Size(
    64,
    40,
  ),
  // ButtonPadding: ,.
  thickBorderWidth: 1.0,
  thinBorderWidth: 1.0,
  textButtonRadius: 20,
  elevatedButtonRadius: 20,
  // Kept null as I am using useMaterial3 set to true.
  elevatedButtonElevation: null,
  outlinedButtonRadius: 20,
  toggleButtonsRadius: 20,
  textButtonSchemeColor: SchemeColor.primary,
  elevatedButtonSchemeColor: SchemeColor.primary,
  elevatedButtonSecondarySchemeColor: SchemeColor.secondary,
  outlinedButtonSchemeColor: SchemeColor.primary,
  // My guess of what is should be, but one could also use promaryContainer.
  outlinedButtonOutlineSchemeColor: SchemeColor.inversePrimary,
  // not needed as I do not use the depreciated button classes
  //materialButtonSchemeColor: ,
  toggleButtonsSchemeColor: SchemeColor.primary,
  switchSchemeColor: SchemeColor.secondary,
  checkboxSchemeColor: SchemeColor.secondary,
  radioSchemeColor: SchemeColor.secondary,
  unselectedToggleIsColored: false,
  inputDecoratorRadius: 20,
  inputDecoratorSchemeColor: SchemeColor.primary,
  inputDecoratorIsFilled: true,
  inputDecoratorFillColor: mainBrandColorSchemeDark.primary.withAlpha(0x0F),
  inputDecoratorBorderType: FlexInputBorderType.outline,
  inputDecoratorUnfocusedHasBorder: true,
  inputDecoratorUnfocusedBorderIsColored: true,
  fabRadius: 16,
  fabUseShape: false,
  fabSchemeColor: SchemeColor.primary,
  chipRadius: 8,
  // Set to null as I use the useMaterial3 true setting.
  chipSchemeColor: null,
  cardRadius: 12,

  popupMenuRadius: 10,

  popupMenuOpacity: 1,
  dialogRadius: 28,

  dialogBackgroundSchemeColor: SchemeColor.surface,
  timePickerDialogRadius: 28,

  snackBarBackgroundSchemeColor: SchemeColor.inversePrimary,
  appBarBackgroundSchemeColor: SchemeColor.secondary,
  appBarCenterTitle: true,
  tabBarItemSchemeColor: SchemeColor.secondary,
  tabBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
  bottomSheetRadius: 16,

  // No need for bottomnaviagtion as I am using MD3 navigationappbar.

  navigationBarLabelTextStyle: brandDarkTextTheme.labelMedium,
  navigationBarSelectedLabelSize: 12,
  navigationBarUnselectedLabelSize: 12,
  navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
  navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
  navigationBarMutedUnselectedLabel: true,
  navigationBarSelectedIconSize: 24,
  navigationBarUnselectedIconSize: 24,
  navigationBarSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
  navigationBarUnselectedIconSchemeColor: SchemeColor.onSurfaceVariant,
  navigationBarMutedUnselectedIcon: true,
  navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
  navigationBarIndicatorOpacity: 0.8,
  navigationBarBackgroundSchemeColor: SchemeColor.surface,
  navigationBarOpacity: 1,
  navigationBarHeight: 62,
  navigationBarLabelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

  navigationRailLabelTextStyle: brandDarkTextTheme.labelMedium,
  navigationRailSelectedLabelSize: 11,
  navigationRailUnselectedLabelSize: 11,
  navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
  // FCS changes opacity on this which is why it can be the same.
  navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
  navigationRailMutedUnselectedLabel: true,
  navigationRailSelectedIconSize: 24,
  navigationRailUnselectedIconSize: 24,
  navigationRailSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
  navigationRailUnselectedIconSchemeColor: SchemeColor.onSurfaceVariant,
  navigationRailMutedUnselectedIcon: true,
  navigationRailUseIndicator: true,
  navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
  // We do not know yet what MD3 will have, this my best guess.
  navigationRailIndicatorOpacity: 0.1,
  navigationRailBackgroundSchemeColor: SchemeColor.background,
  navigationRailOpacity: 1,

  navigationRailLabelType: NavigationRailLabelType.all,
  // My best guess.
  navigationRailGroupAlignment: 0.5,
);

//
// ignore: prefer-correct-identifier-length
final FlexSubThemesData brandSubThemeDataLightHighContrast = FlexSubThemesData(
  interactionEffects: true,
  blendOnLevel: 0,
  blendOnColors: true,
  useFlutterDefaults: false,
  blendTextTheme: true,
  useTextTheme: true,
  defaultRadius: 4,
  buttonMinSize: const Size(
    64,
    40,
  ),
  // ButtonPadding: ,.
  thickBorderWidth: 1.0,
  thinBorderWidth: 1.0,
  textButtonRadius: 20,
  elevatedButtonRadius: 20,
  // Kept null as I am using useMaterial3 set to true.
  elevatedButtonElevation: null,
  outlinedButtonRadius: 20,
  toggleButtonsRadius: 20,
  textButtonSchemeColor: SchemeColor.primary,
  elevatedButtonSchemeColor: SchemeColor.primary,
  elevatedButtonSecondarySchemeColor: SchemeColor.secondary,
  outlinedButtonSchemeColor: SchemeColor.primary,
  // My guess of what is should be, but one could also use promaryContainer.
  outlinedButtonOutlineSchemeColor: SchemeColor.inversePrimary,
  // not needed as I do not use the depreciated button classes
  //materialButtonSchemeColor: ,
  toggleButtonsSchemeColor: SchemeColor.primary,
  switchSchemeColor: SchemeColor.secondary,
  checkboxSchemeColor: SchemeColor.secondary,
  radioSchemeColor: SchemeColor.secondary,
  unselectedToggleIsColored: false,
  inputDecoratorRadius: 20,
  inputDecoratorSchemeColor: SchemeColor.primary,
  inputDecoratorIsFilled: true,
  inputDecoratorFillColor: mainBrandColorSchemeLight.primary.withAlpha(0x0F),
  inputDecoratorBorderType: FlexInputBorderType.outline,
  inputDecoratorUnfocusedHasBorder: true,
  inputDecoratorUnfocusedBorderIsColored: true,
  fabRadius: 16,
  fabUseShape: false,
  fabSchemeColor: SchemeColor.primary,
  chipRadius: 8,
  // Set to null as I use the useMaterial3 true setting.
  chipSchemeColor: null,
  cardRadius: 12,

  popupMenuRadius: 10,

  popupMenuOpacity: 1,
  dialogRadius: 28,

  dialogBackgroundSchemeColor: SchemeColor.surface,
  timePickerDialogRadius: 28,

  snackBarBackgroundSchemeColor: SchemeColor.inversePrimary,
  appBarBackgroundSchemeColor: SchemeColor.secondary,
  appBarCenterTitle: true,
  tabBarItemSchemeColor: SchemeColor.secondary,
  tabBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
  bottomSheetRadius: 16,

  // No need for bottomnaviagtion as I am using MD3 navigationappbar.

  navigationBarLabelTextStyle: brandLightTextTheme.labelMedium,
  navigationBarSelectedLabelSize: 12,
  navigationBarUnselectedLabelSize: 12,
  navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
  navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
  navigationBarMutedUnselectedLabel: true,
  navigationBarSelectedIconSize: 24,
  navigationBarUnselectedIconSize: 24,
  navigationBarSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
  navigationBarUnselectedIconSchemeColor: SchemeColor.onSurfaceVariant,
  navigationBarMutedUnselectedIcon: true,
  navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
  navigationBarIndicatorOpacity: 0.8,
  navigationBarBackgroundSchemeColor: SchemeColor.surface,
  navigationBarOpacity: 1,
  navigationBarHeight: 62,
  navigationBarLabelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

  navigationRailLabelTextStyle: brandLightTextTheme.labelMedium,
  navigationRailSelectedLabelSize: 11,
  navigationRailUnselectedLabelSize: 11,
  navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
  // FCS changes opacity on this which is why it can be the same.
  navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
  navigationRailMutedUnselectedLabel: true,
  navigationRailSelectedIconSize: 24,
  navigationRailUnselectedIconSize: 24,
  navigationRailSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
  navigationRailUnselectedIconSchemeColor: SchemeColor.onSurfaceVariant,
  navigationRailMutedUnselectedIcon: true,
  navigationRailUseIndicator: true,
  navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
  // We do not know yet what MD3 will have, this my best guess.
  navigationRailIndicatorOpacity: 0.1,
  navigationRailBackgroundSchemeColor: SchemeColor.background,
  navigationRailOpacity: 1,

  navigationRailLabelType: NavigationRailLabelType.all,
  // My best guess.
  navigationRailGroupAlignment: 0.5,
);

//
// ignore: prefer-correct-identifier-length
final FlexSubThemesData brandSubThemeDataDarkHighContrast = FlexSubThemesData(
  interactionEffects: true,
  blendOnLevel: 0,
  blendOnColors: true,
  useFlutterDefaults: false,
  blendTextTheme: true,
  useTextTheme: true,
  defaultRadius: 4,
  buttonMinSize: const Size(
    64,
    40,
  ),
  // ButtonPadding: ,.
  thickBorderWidth: 1.0,
  thinBorderWidth: 1.0,
  textButtonRadius: 20,
  elevatedButtonRadius: 20,
  // Kept null as I am using useMaterial3 set to true.
  elevatedButtonElevation: null,
  outlinedButtonRadius: 20,
  toggleButtonsRadius: 20,
  textButtonSchemeColor: SchemeColor.primary,
  elevatedButtonSchemeColor: SchemeColor.primary,
  elevatedButtonSecondarySchemeColor: SchemeColor.secondary,
  outlinedButtonSchemeColor: SchemeColor.primary,
  // My guess of what is should be, but one could also use promaryContainer.
  outlinedButtonOutlineSchemeColor: SchemeColor.inversePrimary,
  // not needed as I do not use the depreciated button classes
  //materialButtonSchemeColor: ,
  toggleButtonsSchemeColor: SchemeColor.primary,
  switchSchemeColor: SchemeColor.secondary,
  checkboxSchemeColor: SchemeColor.secondary,
  radioSchemeColor: SchemeColor.secondary,
  unselectedToggleIsColored: false,
  inputDecoratorRadius: 20,
  inputDecoratorSchemeColor: SchemeColor.primary,
  inputDecoratorIsFilled: true,
  inputDecoratorFillColor: mainBrandColorSchemeDark.primary.withAlpha(0x0F),
  inputDecoratorBorderType: FlexInputBorderType.outline,
  inputDecoratorUnfocusedHasBorder: true,
  inputDecoratorUnfocusedBorderIsColored: true,
  fabRadius: 16,
  fabUseShape: false,
  fabSchemeColor: SchemeColor.primary,
  chipRadius: 8,
  // Set to null as I use the useMaterial3 true setting.
  chipSchemeColor: null,
  cardRadius: 12,

  popupMenuRadius: 10,

  popupMenuOpacity: 1,
  dialogRadius: 28,

  dialogBackgroundSchemeColor: SchemeColor.surface,
  timePickerDialogRadius: 28,

  snackBarBackgroundSchemeColor: SchemeColor.inversePrimary,
  appBarBackgroundSchemeColor: SchemeColor.secondary,
  appBarCenterTitle: true,
  tabBarItemSchemeColor: SchemeColor.secondary,
  tabBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
  bottomSheetRadius: 16,

  // No need for bottomnaviagtion as I am using MD3 navigationappbar.

  navigationBarLabelTextStyle: brandDarkTextTheme.labelMedium,
  navigationBarSelectedLabelSize: 12,
  navigationBarUnselectedLabelSize: 12,
  navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
  navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
  navigationBarMutedUnselectedLabel: true,
  navigationBarSelectedIconSize: 24,
  navigationBarUnselectedIconSize: 24,
  navigationBarSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
  navigationBarUnselectedIconSchemeColor: SchemeColor.onSurfaceVariant,
  navigationBarMutedUnselectedIcon: true,
  navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
  navigationBarIndicatorOpacity: 0.8,
  navigationBarBackgroundSchemeColor: SchemeColor.surface,
  navigationBarOpacity: 1,
  navigationBarHeight: 62,
  navigationBarLabelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

  navigationRailLabelTextStyle: brandDarkTextTheme.labelMedium,
  navigationRailSelectedLabelSize: 11,
  navigationRailUnselectedLabelSize: 11,
  navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
  // FCS changes opacity on this which is why it can be the same.
  navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
  navigationRailMutedUnselectedLabel: true,
  navigationRailSelectedIconSize: 24,
  navigationRailUnselectedIconSize: 24,
  navigationRailSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
  navigationRailUnselectedIconSchemeColor: SchemeColor.onSurfaceVariant,
  navigationRailMutedUnselectedIcon: true,
  navigationRailUseIndicator: true,
  navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
  // We do not know yet what MD3 will have, this my best guess.
  navigationRailIndicatorOpacity: 0.1,
  navigationRailBackgroundSchemeColor: SchemeColor.background,
  navigationRailOpacity: 1,

  navigationRailLabelType: NavigationRailLabelType.all,
  // My best guess.
  navigationRailGroupAlignment: 0.5,
);
