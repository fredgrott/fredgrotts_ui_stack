// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter SDK samples experimental material design 3 demo
// BSD license authored by Flutter team.

import 'package:fcs_demo/src/domain/models/elevations.dart';
import 'package:fcs_demo/src/presentation/features/sceens/elevation/elevation_card.dart';
import 'package:flutter/material.dart';

class ElevationScreen extends StatelessWidget {
  const ElevationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color shadowColor = Theme.of(context).colorScheme.shadow;
    final Color surfaceTint = Theme.of(context).colorScheme.primary;

    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 20,
              right: 16.0,
            ),
            child: Text(
              'Surface Tint only',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevationGrid(surfaceTintColor: surfaceTint),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 8.0,
              right: 16.0,
            ),
            child: Text(
              'Surface Tint and Shadow',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevationGrid(
            shadowColor: shadowColor,
            surfaceTintColor: surfaceTint,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 8.0,
              right: 16.0,
            ),
            child: Text(
              'Shadow only',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevationGrid(shadowColor: shadowColor),
        ],
      ),
    );
  }
}

const double narrowScreenWidthThreshold = 450;

class ElevationGrid extends StatelessWidget {
  const ElevationGrid({
    super.key,
    this.shadowColor,
    this.surfaceTintColor,
  });

  final Color? shadowColor;
  final Color? surfaceTintColor;

  List<ElevationCard> elevationCards(
    Color? shadowColor,
    Color? surfaceTintColor,
  ) {
    return elevations
        .map(
          (elevationInfo) => ElevationCard(
            info: elevationInfo,
            shadowColor: shadowColor,
            surfaceTint: surfaceTintColor,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: LayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          if (constraints.maxWidth < narrowScreenWidthThreshold) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: elevationCards(
                shadowColor,
                surfaceTintColor,
              ),
            );
          } else {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 6,
              children: elevationCards(
                shadowColor,
                surfaceTintColor,
              ),
            );
          }
        },
      ),
    );
  }
}
