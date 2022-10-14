// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter SDK samples experimental material design 3 demo
// BSD license authored by Flutter team.

import 'package:fcs_demo/src/domain/entities/dividers.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/buttons.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/cards.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/checkboxes.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/chips.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/dialogs.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/floating_action_buttons.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/icon_buttons.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/navigation_bars.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/switches.dart';
import 'package:fcs_demo/src/presentation/features/sceens/component/text_fields.dart';
import 'package:flutter/material.dart';

class ComponentScreen extends StatelessWidget {
  const ComponentScreen({
    super.key,
    required this.showNavBottomBar,
  });

  final bool showNavBottomBar;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: maxWidthConstraint,
            child: ListView(
              shrinkWrap: true,
              children: [
                colDivider,
                colDivider,
                const Buttons(),
                colDivider,
                colDivider,
                const IconToggleButtons(),
                colDivider,
                const FloatingActionButtons(),
                colDivider,
                const Chips(),
                colDivider,
                const Cards(),
                colDivider,
                const TextFields(),
                colDivider,
                const Dialogs(),
                colDivider,
                const Switches(),
                colDivider,
                const Checkboxes(),
                colDivider,
                //
                // ignore: prefer_if_elements_to_conditional_expressions
                showNavBottomBar
                    ? const NavigationBars(
                        selectedIndex: 0,
                        isExampleBar: true,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const double maxWidthConstraint = 400;
