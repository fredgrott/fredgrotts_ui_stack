// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:new_adaptscaffdemo/presentation/features/home/my_home_page.dart';

void main() {
  final Finder body = find.byKey(const Key('body'));
  final Finder sBody = find.byKey(const Key('sBody'));
  final Finder bnav = find.byKey(const Key('bottomNavigation'));
  final Finder pnav = find.byKey(const Key('primaryNavigation'));
  final Finder pnav1 = find.byKey(const Key('primaryNavigation1'));

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
    'dislays correct item of config based on screen width',
    (WidgetTester tester) async {
      await updateScreen(
        300,
        tester,
      );
      expect(
        sBody,
        findsNothing,
      );
      expect(
        bnav,
        findsOneWidget,
      );
      expect(
        body,
        findsNothing,
      );
      expect(
        pnav,
        findsNothing,
      );
      expect(
        pnav1,
        findsNothing,
      );

      await updateScreen(
        800,
        tester,
      );
      expect(
        body,
        findsOneWidget,
      );
      expect(
        body,
        findsOneWidget,
      );
      expect(
        bnav,
        findsNothing,
      );
      expect(
        sBody,
        findsOneWidget,
      );
      expect(
        pnav,
        findsOneWidget,
      );
      expect(
        pnav1,
        findsNothing,
      );

      await updateScreen(
        1100,
        tester,
      );
      expect(
        body,
        findsOneWidget,
      );
      expect(
        pnav,
        findsNothing,
      );
      expect(
        pnav1,
        findsOneWidget,
      );
    },
  );
}
