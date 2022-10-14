// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter SDK samples experimental material design 3 demo
// BSD license authored by Flutter team.

import 'package:fcs_demo/src/domain/entities/dividers.dart';
import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  const Chips({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
            children: <Widget>[
              ActionChip(
                label: const Text('Assist'),
                avatar: const Icon(Icons.chat_outlined),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              ActionChip(
                label: const Text('Set alarm'),
                avatar: const Icon(Icons.alarm_add_outlined),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              const ActionChip(
                label: Text('No Action'),
                avatar: Icon(Icons.indeterminate_check_box_outlined),
              ),
            ],
          ),
          colDivider,
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
            children: <Widget>[
              FilterChip(
                label: const Text('Filter'),
                //
                // ignore: no-empty-block
                onSelected: (isSelected) {},
              ),
              FilterChip(
                label: const Text('OK'),
                selected: true,
                //
                // ignore: no-empty-block
                onSelected: (isSelected) {},
              ),
              const FilterChip(
                label: Text('Disabled'),
                selected: true,
                onSelected: null,
              ),
              const FilterChip(
                label: Text('Disabled'),
                onSelected: null,
              ),
            ],
          ),
          colDivider,
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
            children: <Widget>[
              InputChip(
                label: const Text('Input'),
                //
                // ignore: no-empty-block
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Egg'),
                //
                // ignore: no-empty-block
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Lettuce'),
                showCheckmark: false,
                selected: true,
                //
                // ignore: no-empty-block
                onDeleted: () {},
              ),
              const InputChip(
                label: Text('No'),
                isEnabled: false,
              ),
            ],
          ),
          colDivider,
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
            children: <Widget>[
              ActionChip(
                label: const Text('Suggestion'),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              ActionChip(
                label: const Text('I agree'),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              ActionChip(
                label: const Text('LGTM'),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              const ActionChip(label: Text('Nope')),
            ],
          ),
        ],
      ),
    );
  }
}
