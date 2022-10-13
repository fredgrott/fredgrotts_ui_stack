// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ItemList creates the list of cards and the search bar.
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:new_adaptscaffdemo/domain/callbacks/card_selected_callback.dart';
import 'package:new_adaptscaffdemo/domain/models/item.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/item_list_tile.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/small_compose_icon.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    required this.items,
    required this.selectCard,
    required this.selected,
  });

  final List<Item> items;
  final int? selected;
  final CardSelectedCallback selectCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        0,
        0,
        0,
        0,
      ),
      floatingActionButton: Breakpoints.mediumAndUp.isActive(context)
          ? null
          : const SmallComposeIcon(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.search),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CircleAvatar(
                    radius: 18,
                    child: Image.asset(
                      'assets/images/plum.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                contentPadding: const EdgeInsets.all(25),
                hintStyle: const TextStyle(
                  color: Color.fromARGB(
                    255,
                    135,
                    129,
                    138,
                  ),
                ),
                hintText: 'Search replies',
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) =>
                  ItemListTile(
                item: items[index],
                email: items[index].emails!.first,
                selectCard: selectCard,
                selected: selected,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
