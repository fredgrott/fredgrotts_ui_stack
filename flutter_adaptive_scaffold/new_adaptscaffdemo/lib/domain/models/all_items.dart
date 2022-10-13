// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:new_adaptscaffdemo/domain/models/email.dart';
import 'package:new_adaptscaffdemo/domain/models/item.dart';

/// List of items, each representing a thread of emails which will populate
/// the different layouts.
const List<Item> allItems = <Item>[
  Item(
    title: 'Dinner Club',
    emails: <Email>[
      Email(
        sender: 'So Duri',
        recipients: 'me, Ziad and Lily',
        image: 'assets/images/strawberry.png',
        time: '20 min',
        body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec gravida tellus, vel scelerisque nisi. Mauris egestas, augue nec dictum tempus, diam sapien luctus odio, a posuere sem neque at nulla. Vivamus pulvinar nisi et dapibus dapibus. Donec euismod pellentesque ultrices. Vivamus quis condimentum metus, in venenatis lorem. Proin suscipit tincidunt eleifend. Praesent a nisi ac ipsum sodales gravida.',
        bodyImage: '',
      ),
      Email(
          sender: 'Me',
          recipients: 'me, Ziad, and Lily',
          image: 'assets/images/plum.png',
          time: '4 min',
          body:
              'Donec non mollis nulla, in varius mi. Ut id lorem eget felis lobortis tincidunt. Curabitur facilisis ex vitae tristique efficitur. Aenean eget augue finibus, tempor eros vitae, tempor neque. In sed pellentesque elit. Donec lacus lacus, malesuada in tincidunt sit amet, condimentum vel enim. Cras dapibus erat quis nisl hendrerit, vel pretium turpis condimentum. ',
          bodyImage: '',),
      Email(
          sender: 'Ziad Aouad',
          recipients: 'me, Ziad and Lily',
          image: 'assets/images/mushroom.png',
          time: '2 min',
          body:
              'Duis sit amet nibh a diam placerat aliquam nec ac mi. Aenean hendrerit efficitur tellus, non pharetra eros posuere sit amet. Maecenas interdum lacinia eleifend. Nam efficitur tellus et dolor vestibulum, non dictum quam iaculis. Aenean id nulla ut erat placerat feugiat. Mauris in quam metus. Aliquam erat volutpat.',
          bodyImage: '',),
    ],
  ),
  Item(
    title: '7 Best Yoga Poses',
    emails: <Email>[
      Email(
        sender: 'Elaine Howley',
        time: '2 hours',
        body:
            'Curabitur tincidunt purus at vulputate mattis. Nam lectus urna, varius eget quam in, ultricies ultrices libero. Curabitur rutrum ultricies varius. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec vulputate auctor est, non semper velit eleifend sit amet.',
        image: 'assets/images/potato.png',
        bodyImage: 'assets/images/avocado.png',
        recipients: '',
      ),
    ],
  ),
  Item(
    title: 'A Programming Language',
    emails: <Email>[
      Email(
        sender: 'Laney Mansell',
        time: '10 min',
        body:
            'Cras egestas ultricies elit, vitae interdum lorem aliquam et. Donec quis arcu a quam tempor rutrum vitae in lectus. Nullam elit nunc, lacinia sed luctus non, mollis id nulla. Morbi luctus turpis sapien, id molestie ante maximus vel. Vivamus sagittis consequat nisl nec placerat.',
        image: 'assets/images/habanero.png',
        bodyImage: '',
        recipients: '',
      ),
    ],
  ),
];
