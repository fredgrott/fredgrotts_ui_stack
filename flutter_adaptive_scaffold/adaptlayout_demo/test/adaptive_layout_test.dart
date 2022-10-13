// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:adaptlayout_demo/presentation/features/home/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Finder body = find.byKey(const Key('Body Small'));
  final Finder bottomNavigation =
      find.byKey(const Key('Bottom Navigation Small'));

  Future<void> updateScreen(
    double width,
    WidgetTester tester,
  ) async {
    await tester.binding.setSurfaceSize(
      Size(
        width,
        800,
      ),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: MediaQuery(
          data: MediaQueryData(
            size: Size(
              width,
              800,
            ),
          ),
          child: const MyHomePage(),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets(
    'displays correct item of config based on screen width',
    (WidgetTester tester) async {
      await updateScreen(300, tester,);
      expect(find.byKey(const Key('Body Small')), findsOneWidget,);
      expect(find.byKey(const Key('Primary Navigation Medium')), findsNothing,);
      expect(find.byKey(const Key('Bottom Navigation Small')), findsOneWidget,);
      expect(find.byKey(const Key('Body Medium')), findsNothing,);
      expect(find.byKey(const Key('Primary Navigation Large')), findsNothing,);

      await updateScreen(700, tester,);
      expect(find.byKey(const Key('Body')), findsNothing,);
      expect(find.byKey(const Key('Bottom Navigation Small')), findsNothing,);
      expect(find.byKey(const Key('Body Medium')), findsOneWidget,);
      expect(
          find.byKey(const Key('Primary Navigation Medium')), findsOneWidget,);
      expect(find.byKey(const Key('Primary Navigation Large')), findsNothing,);
    },
  );

  testWidgets(
    'adaptive layout bottom navigation displays with correct properties',
    (WidgetTester tester) async {
      await updateScreen(
        400,
        tester,
      );
      final BuildContext context = tester.element(find.byType(MaterialApp));

      // Bottom Navigation Bar.
      final Finder findKey = find.byKey(const Key('Bottom Navigation Small'));
      final SlotLayoutConfig slotLayoutConfig =
          tester.firstWidget<SlotLayoutConfig>(findKey);
      final WidgetBuilder? widgetBuilder = slotLayoutConfig.builder;
      final Widget Function(BuildContext) widgetFunction =
          (widgetBuilder ?? () => Container()) as Widget Function(BuildContext);
      final BottomNavigationBarThemeData bottomNavigationBarThemeData =
          (widgetFunction(context) as BottomNavigationBarTheme).data;

      expect(
        bottomNavigationBarThemeData.selectedItemColor,
        Colors.black,
      );
    },
  );

  testWidgets(
    'adaptive layout navigation rail displays with correct properties',
    (WidgetTester tester) async {
      await updateScreen(
        620,
        tester,
      );
      final BuildContext context = tester.element(find.byType(AdaptiveLayout));

      final Finder findKey = find.byKey(const Key('Primary Navigation Medium'));
      final SlotLayoutConfig slotLayoutConfig =
          tester.firstWidget<SlotLayoutConfig>(findKey);
      final WidgetBuilder? widgetBuilder = slotLayoutConfig.builder;
      final Widget Function(BuildContext) widgetFunction =
          (widgetBuilder ?? () => Container()) as Widget Function(BuildContext);
      final SizedBox sizedBox =
          (((widgetFunction(context) as Builder).builder(context) as Padding)
                  .child ??
              () => const SizedBox()) as SizedBox;
      expect(
        sizedBox.width,
        72,
      );
    },
  );

  testWidgets(
    'adaptive layout displays children in correct places',
    (WidgetTester tester) async {
      await updateScreen(
        400,
        tester,
      );
      expect(
        tester.getBottomLeft(bottomNavigation),
        const Offset(
          0,
          800,
        ),
      );
      expect(
        tester.getBottomRight(bottomNavigation),
        const Offset(
          400,
          800,
        ),
      );
      expect(
        tester.getTopRight(body),
        const Offset(
          400,
          0,
        ),
      );
      expect(
        tester.getTopLeft(body),
        Offset.zero,
      );
    },
  );

  testWidgets(
    'adaptive layout does not animate when animations off',
    (WidgetTester tester) async {
      final Finder bodyMedium = find.byKey(const Key('Body Medium'));
      await updateScreen(
        690,
        tester,
      );

      expect(
        tester.getTopLeft(bodyMedium),
        const Offset(
          88,
          0,
        ),
      );
      expect(
        tester.getBottomRight(bodyMedium),
        const Offset(
          690,
          800,
        ),
      );
    },
  );
}
