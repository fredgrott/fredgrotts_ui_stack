// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:new_adaptscaffdemo/domain/models/screen_arguments.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/route_detail_view.dart';

class ExtractRouteArguments extends StatelessWidget {
  const ExtractRouteArguments();

  static const String routeName = '/detailView';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args =
        ModalRoute.of(context)!.settings.arguments! as ScreenArguments;

    return RouteDetailView(
      item: args.item,
      selectCard: args.selectCard,
    );
  }
}
