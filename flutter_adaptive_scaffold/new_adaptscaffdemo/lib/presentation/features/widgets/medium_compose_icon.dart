// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/small_compose_icon.dart';

class MediumComposeIcon extends StatelessWidget {
  const MediumComposeIcon();

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        padding: const EdgeInsets.only(top: 10, bottom: 18,),
        child: const Icon(Icons.menu),
      ),
      const SmallComposeIcon(),
    ],);
  }
}
