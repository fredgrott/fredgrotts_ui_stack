// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:new_adaptscaffdemo/domain/callbacks/card_selected_callback.dart';
import 'package:new_adaptscaffdemo/domain/models/item.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/detail_tile.dart';

class RouteDetailView extends StatelessWidget {
  const RouteDetailView({
    required this.item,
    required this.selectCard,
  });

  final Item item;
  final CardSelectedCallback selectCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: () {
                Navigator.popUntil(
                  context,
                  (Route<dynamic> route) => route.settings.name == '/',
                );
                selectCard(null);
              },
              child: const Icon(Icons.arrow_back),
            ),
          ),
          Expanded(child: DetailTile(item: item)),
        ],
      ),
    );
  }
}
