// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:new_adaptscaffdemo/domain/models/email.dart';

class Item {
  const Item({
    required this.title,
    required this.emails,
  });

  final String title;
  final List<Email>? emails;
}
