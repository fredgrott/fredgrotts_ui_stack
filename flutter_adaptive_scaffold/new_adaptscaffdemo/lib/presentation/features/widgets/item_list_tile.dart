// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:new_adaptscaffdemo/domain/callbacks/card_selected_callback.dart';
import 'package:new_adaptscaffdemo/domain/models/all_items.dart';
import 'package:new_adaptscaffdemo/domain/models/email.dart';
import 'package:new_adaptscaffdemo/domain/models/item.dart';
import 'package:new_adaptscaffdemo/domain/models/screen_arguments.dart';
import 'package:new_adaptscaffdemo/presentation/features/routes/extract_route_arguments.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({
    required this.item,
    required this.email,
    required this.selectCard,
    required this.selected,
  });

  final Item item;
  final Email email;
  final int? selected;
  final CardSelectedCallback selectCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //
      // ignore: prefer-extracting-callbacks
      onTap: () {
        // The behavior of opening a detail view is different on small screens
        // than large screens.
        // Small screens open a modal with the detail view while large screens
        // simply show the details on the secondaryBody.
        selectCard(allItems.indexOf(item));
        if (!Breakpoints.mediumAndUp.isActive(context)) {
          Navigator.of(context).pushNamed(ExtractRouteArguments.routeName,
              arguments: ScreenArguments(item: item, selectCard: selectCard,),);
        } else {
          selectCard(allItems.indexOf(item));
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: selected == allItems.indexOf(item)
                ? const Color.fromARGB(255, 234, 222, 255,)
                : const Color.fromARGB(255, 243, 237, 247,),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    radius: 18,
                    child: Image.asset(
                      email.image,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        email.sender,
                        style: Theme.of(context).textTheme.bodyLarge,
                        softWrap: false,
                        overflow: TextOverflow.clip,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '${email.time} ago',
                        style: Theme.of(context).textTheme.bodySmall,
                        softWrap: false,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Icon(Icons.star_outline, color: Colors.grey[500],),
                  ),
                ),
                const SizedBox(height: 13),
                Text(item.title,
                    style: Theme.of(context).textTheme.titleMedium,),
                const SizedBox(height: 9),
                Text(email.body.replaceRange(116, email.body.length, '...',),
                    style: Theme.of(context).textTheme.bodyLarge,),
                const SizedBox(height: 9),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: (email.bodyImage != '')
                      ? Image.asset(email.bodyImage)
                      : Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
