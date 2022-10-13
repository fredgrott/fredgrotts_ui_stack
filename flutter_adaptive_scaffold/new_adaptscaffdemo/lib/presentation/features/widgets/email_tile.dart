// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: use_decorated_box

import 'package:flutter/material.dart';

class EmailTile extends StatelessWidget {
  const EmailTile({
    required this.sender,
    required this.time,
    required this.senderIcon,
    required this.recipients,
    required this.body,
    required this.bodyImage,
  });

  final String sender;
  final String time;
  final String senderIcon;
  final String recipients;
  final String body;
  final String bodyImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 18,
                    child: Image.asset(
                      senderIcon,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        sender,
                        style: TextStyle(
                          color: Colors.grey[850],
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '$time ago',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(
                        255,
                        245,
                        241,
                        248,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Icon(
                      Icons.star_outline,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              if (recipients != '')
                Column(
                  children: <Widget>[
                    const SizedBox(height: 15),
                    Text(
                      'To $recipients',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              else
                Container(),
              const SizedBox(height: 15),
              Text(
                body,
                style: TextStyle(
                  color: Colors.grey[700],
                  height: 1.35,
                  fontSize: 14.5,
                ),
              ),
              const SizedBox(height: 9),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: (bodyImage != '') ? Image.asset(bodyImage) : Container(),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: 126,
                    child: OutlinedButton(
                      //
                      // ignore: no-empty-block
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(
                            255,
                            245,
                            241,
                            248,
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            width: 0.0,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      child: Text(
                        'Reply',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 126,
                    child: OutlinedButton(
                      //
                      // ignore: no-empty-block
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(
                            255,
                            245,
                            241,
                            248,
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            width: 0.0,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      child: Text(
                        'Reply all',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
