// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:new_adaptscaffdemo/presentation/features/home/my_home_page.dart';
import 'package:new_adaptscaffdemo/presentation/features/routes/extract_route_arguments.dart';

class MyApp extends StatelessWidget {
  /// Creates a const main application widget.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adaptive Layout Demo',
      routes: <String, Widget Function(BuildContext)>{
        ExtractRouteArguments.routeName: (_) => const ExtractRouteArguments(),
      },
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(),
    );
  }
}
