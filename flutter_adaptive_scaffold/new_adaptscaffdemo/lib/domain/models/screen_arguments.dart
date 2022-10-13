// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// The ScreenArguments used to pass arguments to the RouteDetailView as a named
// route.
import 'package:new_adaptscaffdemo/domain/callbacks/card_selected_callback.dart';
import 'package:new_adaptscaffdemo/domain/models/item.dart';

class ScreenArguments {
  ScreenArguments({
    required this.item,
    required this.selectCard,
  });
  final Item item;
  final CardSelectedCallback selectCard;
}
