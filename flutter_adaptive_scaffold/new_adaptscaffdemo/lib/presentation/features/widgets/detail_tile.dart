// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:new_adaptscaffdemo/domain/models/email.dart';
import 'package:new_adaptscaffdemo/domain/models/item.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/email_tile.dart';

class DetailTile extends StatelessWidget {
  const DetailTile({required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(
              255,
              245,
              241,
              248,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  right: 16,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  item.title,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  '${item.emails!.length} Messages',
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Icon(
                                  Icons.restore_from_trash,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: item.emails!.length,
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    final Email thisEmail = item.emails![index];

                    return EmailTile(
                      sender: thisEmail.sender,
                      time: thisEmail.time,
                      senderIcon: thisEmail.image,
                      recipients: thisEmail.recipients,
                      body: thisEmail.body,
                      bodyImage: thisEmail.bodyImage,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
