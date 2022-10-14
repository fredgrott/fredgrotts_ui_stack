// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_positional_boolean_parameters


import 'package:fcs_demo/src/presentation/features/sceens/color/color_palettes_screen.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/component_screen.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/navigation_bars.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/navigation_rail_section.dart';
import 'package:fcs_demo/src/presentation/features/sceens/elevation/elevation_screen.dart';
import 'package:fcs_demo/src/presentation/features/sceens/typography/typography_screen.dart';
import 'package:fcs_demo/src/presentation/material/themes/brand_theme_data.dart';
import 'package:flutter/material.dart';

const double narrowScreenWidthThreshold = 450;
int screenIndex = 0;

enum ScreenSelected {
  component(0),
  color(1),
  typography(2),
  elevation(3);

  const ScreenSelected(this.value);
  final int value;
}


class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void handleScreenChanged(int screenSelected) {
    setState(() {
      screenIndex = screenSelected;
    });
  }

  Widget createScreenFor(
    ScreenSelected screenSelected,
    bool showNavBarExample,
  ) {
    switch (screenSelected) {
      case ScreenSelected.component:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
      case ScreenSelected.color:
        return const ColorPalettesScreen();
      case ScreenSelected.typography:
        return const TypographyScreen();
      case ScreenSelected.elevation:
        return const ElevationScreen();
      default:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
    }
  }

  //
  // ignore: long-method
  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: const Text('Material 3'),
    );
  }

  //
  // ignore: member-ordering-extended
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material 3',
      theme: brandThemeDataLight,
      darkTheme: brandThemeDataDark,
      highContrastDarkTheme: brandThemeDataDarkHighContrast,
      highContrastTheme: brandThemeDataLightHighContrast,
      themeMode: ThemeMode.dark,
      home: LayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          if (constraints.maxWidth < narrowScreenWidthThreshold) {
            return Scaffold(
              appBar: createAppBar(),
              body: Row(
                children: <Widget>[
                  createScreenFor(
                    ScreenSelected.values[screenIndex],
                    false,
                  ),
                ],
              ),
              bottomNavigationBar: NavigationBars(
                onSelectItem: handleScreenChanged,
                selectedIndex: screenIndex,
                isExampleBar: false,
              ),
            );
          } else {
            return Scaffold(
              appBar: createAppBar(),
              body: SafeArea(
                bottom: false,
                top: false,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: NavigationRailSection(
                        onSelectItem: handleScreenChanged,
                        selectedIndex: screenIndex,
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 1,
                      width: 1,
                    ),
                    createScreenFor(
                      ScreenSelected.values[screenIndex],
                      true,
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
