// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class LargeComposeIcon extends StatelessWidget {
  const LargeComposeIcon();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        top: 5,
        bottom: 12,
      ),
      child: Column(children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                'REPLY',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.menu_open,
                size: 22,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color.fromARGB(
              255,
              255,
              225,
              231,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: Breakpoints.mediumAndUp.isActive(context)
                ? null
                : <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(
                        0,
                        2,
                      ),
                    ),
                  ],
          ),
          width: 200,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: const <Widget>[
                Icon(Icons.edit_outlined),
                SizedBox(width: 20),
                Center(child: Text('Compose')),
              ],
            ),
          ),
        ),
      ],),
    );
  }
}
