// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:fcs_demo/src/presentation/features/home_scaffold/my_home_page.dart';
import 'package:fcs_demo/src/presentation/features/sceens/elevation/elevation_card.dart';
import 'package:fcs_demo/src/presentation/features/sceens/elevation/elevation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'component_screen_test.dart';

void main() {
  testWidgets(
    'Surface Tones screen shows correctly when the corresponding icon is '
    'selected on NavigationBar',
    (tester) async {
      widgetSetup(
        tester,
        449,
      );
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      await tester.pumpWidget(MyHomePage());

      expect(
        find.text('Surface Tint only'),
        findsNothing,
      );
      expect(
        find.byType(NavigationBar),
        findsOneWidget,
      );
      final Finder tintIconOnBar = find.byIcon(Icons.invert_colors_on_outlined);
      expect(
        tintIconOnBar,
        findsOneWidget,
      );
      await tester.tap(tintIconOnBar);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(
        tintIconOnBar,
        findsNothing,
      );
      expect(
        find.byIcon(Icons.opacity),
        findsOneWidget,
      );
      expect(
        find.text('Surface Tint only'),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Surface Tones screen shows correctly when the corresponding icon is '
    'selected on NavigationRail',
    (tester) async {
      widgetSetup(
        tester,
        450,
      ); // NavigationRail shows only when width is >= 450.
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      await tester.pumpWidget(MyHomePage());
      expect(
        find.text('Surface Tint only'),
        findsNothing,
      );
      expect(
        find.byType(NavigationRail),
        findsOneWidget,
      );
      final Finder tintIconOnRail =
          find.byIcon(Icons.invert_colors_on_outlined);
      expect(
        tintIconOnRail,
        findsOneWidget,
      );
      await tester.tap(tintIconOnRail);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(
        tintIconOnRail,
        findsNothing,
      );
      expect(
        find.byIcon(Icons.opacity),
        findsOneWidget,
      );
      expect(
        find.text('Surface Tint only'),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Surface Tones screen shows correct content',
    (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(body: Row(children: const [ElevationScreen()])),
      ));
      expect(
        find.text('Surface Tint only'),
        findsOneWidget,
      );
      expect(
        find.text('Surface Tint and Shadow'),
        findsOneWidget,
      );
      expect(
        find.text('Shadow only'),
        findsOneWidget,
      );
      expect(
        find.byType(ElevationGrid),
        findsNWidgets(3),
      );
      expect(
        find.byType(ElevationCard),
        findsNWidgets(18),
      );
    },
  );
}
