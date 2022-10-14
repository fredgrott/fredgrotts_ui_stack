// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter SDK samples experimental material design 3 demo
// BSD license authored by Flutter team.

import 'package:flutter/material.dart';

class Checkboxes extends StatelessWidget {
  const Checkboxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        CheckboxRow(
          isError: false,
        ),
        CheckboxRow(
          isError: true,
        ),
      ],
    );
  }
}

class CheckboxRow extends StatefulWidget {
  const CheckboxRow({
    super.key,
    required this.isError,
  });

  final bool isError;

  @override
  State<CheckboxRow> createState() => _CheckboxRowState();
}

class _CheckboxRowState extends State<CheckboxRow> {
  bool? isChecked0 = true;
  bool? isChecked1;
  bool? isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Checkbox(
          isError: widget.isError,
          tristate: true,
          value: isChecked0,
          onChanged: (value) {
            setState(() {
              isChecked0 = value;
            });
          },
        ),
        Checkbox(
          isError: widget.isError,
          tristate: true,
          value: isChecked1,
          onChanged: (value) {
            setState(() {
              isChecked1 = value;
            });
          },
        ),
        Checkbox(
          isError: widget.isError,
          tristate: true,
          value: isChecked2,
          onChanged: (value) {
            setState(() {
              isChecked2 = value;
            });
          },
        ),
        Checkbox(
          isError: widget.isError,
          tristate: true,
          value: true,
          onChanged: null,
        ),
      ],
    );
  }
}
