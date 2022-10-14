// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter SDK samples experimental material design 3 demo
// BSD license authored by Flutter team.

import 'package:fcs_demo/src/domain/models/nav_rail_destinations.dart';
import 'package:flutter/material.dart';

class NavigationRailSection extends StatefulWidget {
  final void Function(int) onSelectItem;
  final int selectedIndex;

  const NavigationRailSection({
    super.key,
    required this.onSelectItem,
    required this.selectedIndex,
  });

  @override
  State<NavigationRailSection> createState() => _NavigationRailSectionState();
}

class _NavigationRailSectionState extends State<NavigationRailSection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      minWidth: 50,
      destinations: navRailDestinations,
      selectedIndex: selectedIndex,
      useIndicator: true,
      //
      // ignore: prefer-extracting-callbacks
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
        widget.onSelectItem(index);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }
}
