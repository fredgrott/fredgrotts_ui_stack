// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:new_adaptscaffdemo/domain/models/all_items.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/detail_tile.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/example_page.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/item_list.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/large_compose_icon.dart';
import 'package:new_adaptscaffdemo/presentation/features/widgets/medium_compose_icon.dart';

/// Creates an example mail page using [AdaptiveLayout].
class MyHomePage extends StatefulWidget {
  /// Creates a const [MyHomePage].
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin, ChangeNotifier {
  // A listener used for the controllers to reanimate the staggered animation of
  // the navigation elements.
  ValueNotifier<bool?> showGridView = ValueNotifier<bool?>(false);

  // The index of the selected mail card.
  int? selected;
  void selectCard(int? index) {
    setState(() {
      selected = index;
    });
  }

  // The index of the navigation screen. Only impacts body/secondaryBody.
  int _navigationIndex = 0;

  // The controllers used for the staggered animation of the navigation elements.
  late AnimationController _inboxIconSlideController;
  late AnimationController _articleIconSlideController;
  late AnimationController _chatIconSlideController;
  late AnimationController _videoIconSlideController;

  @override
  Widget build(BuildContext context) {
    const Color iconColor = Color.fromARGB(
      255,
      29,
      25,
      43,
    );
    final Widget trailingNavRail = Column(
      children: <Widget>[
        const Divider(
          color: Colors.white,
          thickness: 1.5,
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            const SizedBox(width: 22),
            Text(
              'Folders',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        const SizedBox(height: 22),
        Row(
          children: <Widget>[
            const SizedBox(width: 16),
            IconButton(
              //
              // ignore: no-empty-block
              onPressed: () {},
              icon: const Icon(Icons.folder_copy_outlined),
              iconSize: 21,
            ),
            const SizedBox(width: 21),
            const Text(
              'Freelance',
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: <Widget>[
            const SizedBox(width: 16),
            IconButton(
              //
              // ignore: no-empty-block
              onPressed: () {},
              icon: const Icon(Icons.folder_copy_outlined),
              iconSize: 21,
            ),
            const SizedBox(width: 21),
            const Text(
              'Mortgage',
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: <Widget>[
            const SizedBox(width: 16),
            IconButton(
              //
              // ignore: no-empty-block
              onPressed: () {},
              icon: const Icon(Icons.folder_copy_outlined),
              iconSize: 21,
            ),
            const SizedBox(width: 21),
            const Flexible(
              child: Text(
                'Taxes',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: <Widget>[
            const SizedBox(width: 16),
            IconButton(
              //
              // ignore: no-empty-block
              onPressed: () {},
              icon: const Icon(Icons.folder_copy_outlined),
              iconSize: 21,
            ),
            const SizedBox(width: 21),
            const Flexible(
              child: Text(
                'Receipts',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );

    // These are the destinations used within the AdaptiveScaffold navigation
    // builders.
    const List<NavigationDestination> destinations = <NavigationDestination>[
      NavigationDestination(
        label: 'Inbox',
        icon: Icon(
          Icons.inbox,
          color: iconColor,
        ),
      ),
      NavigationDestination(
        label: 'Articles',
        icon: Icon(
          Icons.article_outlined,
          color: iconColor,
        ),
      ),
      NavigationDestination(
        label: 'Chat',
        icon: Icon(
          Icons.chat_bubble_outline,
          color: iconColor,
        ),
      ),
      NavigationDestination(
        label: 'Video',
        icon: Icon(
          Icons.video_call_outlined,
          color: iconColor,
        ),
      ),
    ];

    // Updating the listener value.
    showGridView.value = Breakpoints.mediumAndUp.isActive(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        234,
        227,
        241,
      ),
      // Usage of AdaptiveLayout suite begins here. AdaptiveLayout takes
      // LayoutSlots for its variety of screen slots.
      body: AdaptiveLayout(
        // Each SlotLayout has a config which maps Breakpoints to
        // SlotLayoutConfigs.
        primaryNavigation: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig?>{
            // The breakpoint used here is from the Breakpoints class but custom
            // Breakpoints can be defined by extending the Breakpoint class
            Breakpoints.medium: SlotLayout.from(
              // Every SlotLayoutConfig takes a key and a builder. The builder
              // is to save memory that would be spent on initialization.
              key: const Key('primaryNavigation'),
              builder: (_) {
                return AdaptiveScaffold.standardNavigationRail(
                  // Usually it would be easier to use a builder from
                  // AdaptiveScaffold for these types of navigation but this
                  // navigation has custom staggered item animations.
                  onDestinationSelected: (int index) {
                    setState(() {
                      _navigationIndex = index;
                    });
                  },
                  selectedIndex: _navigationIndex,
                  leading: ScaleTransition(
                    scale: _articleIconSlideController,
                    child: const MediumComposeIcon(),
                  ),
                  backgroundColor: const Color.fromARGB(
                    0,
                    255,
                    255,
                    255,
                  ),
                  destinations: <NavigationRailDestination>[
                    slideInNavigationItem(
                      begin: -1,
                      controller: _inboxIconSlideController,
                      icon: Icons.inbox,
                      label: 'Inbox',
                    ),
                    slideInNavigationItem(
                      begin: -2,
                      controller: _articleIconSlideController,
                      icon: Icons.article_outlined,
                      label: 'Articles',
                    ),
                    slideInNavigationItem(
                      begin: -3,
                      controller: _chatIconSlideController,
                      icon: Icons.chat_bubble_outline,
                      label: 'Chat',
                    ),
                    slideInNavigationItem(
                      begin: -4,
                      controller: _videoIconSlideController,
                      icon: Icons.video_call_outlined,
                      label: 'Video',
                    ),
                  ],
                );
              },
            ),
            Breakpoints.large: SlotLayout.from(
              key: const Key('Large primaryNavigation'),
              // The AdaptiveScaffold builder here greatly simplifies
              // navigational elements.
              builder: (_) => AdaptiveScaffold.standardNavigationRail(
                leading: const LargeComposeIcon(),
                onDestinationSelected: (int index) {
                  setState(() {
                    _navigationIndex = index;
                  });
                },
                selectedIndex: _navigationIndex,
                trailing: trailingNavRail,
                extended: true,
                destinations: destinations.map((_) {
                  return AdaptiveScaffold.toRailDestination(_);
                }).toList(),
              ),
            ),
          },
        ),
        body: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig?>{
            Breakpoints.standard: SlotLayout.from(
              key: const Key('body'),
              // The conditional here is for navigation screens. The first
              // screen shows the main screen and every other screen shows
              //  ExamplePage.
              builder: (_) => (_navigationIndex == 0)
                  ? Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: ItemList(
                        selected: selected,
                        items: allItems,
                        selectCard: selectCard,
                      ),
                    )
                  : const ExamplePage(),
            ),
          },
        ),
        secondaryBody: _navigationIndex == 0
            ? SlotLayout(
                config: <Breakpoint, SlotLayoutConfig?>{
                  Breakpoints.mediumAndUp: SlotLayout.from(
                    // This overrides the default behavior of the secondaryBody
                    // disappearing as it is animating out.
                    outAnimation: AdaptiveScaffold.stayOnScreen,
                    key: const Key('Secondary Body'),
                    builder: (_) => SafeArea(
                      child: DetailTile(item: allItems[selected ?? 0]),
                    ),
                  ),
                },
              )
            : null,
        bottomNavigation: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig?>{
            Breakpoints.small: SlotLayout.from(
              key: const Key('bottomNavigation'),
              // You can define inAnimations or outAnimations to override the
              // default offset transition.
              outAnimation: AdaptiveScaffold.topToBottom,
              builder: (_) => BottomNavigationBarTheme(
                data: const BottomNavigationBarThemeData(
                  selectedItemColor: Colors.black,
                ),
                child: AdaptiveScaffold.standardBottomNavigationBar(
                  destinations: destinations,
                ),
              ),
            ),
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    showGridView.addListener(() {
      Navigator.popUntil(
        context,
        (Route<dynamic> route) => route.settings.name == '/',
      );
      _inboxIconSlideController
        ..reset()
        ..forward();
      _articleIconSlideController
        ..reset()
        ..forward();
      _chatIconSlideController
        ..reset()
        ..forward();
      _videoIconSlideController
        ..reset()
        ..forward();
    });
    _inboxIconSlideController = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    )..forward();
    _articleIconSlideController = AnimationController(
      duration: const Duration(milliseconds: 120),
      vsync: this,
    )..forward();
    _chatIconSlideController = AnimationController(
      duration: const Duration(milliseconds: 140),
      vsync: this,
    )..forward();
    _videoIconSlideController = AnimationController(
      duration: const Duration(milliseconds: 160),
      vsync: this,
    )..forward();
    super.initState();
  }

  @override
  void dispose() {
    _inboxIconSlideController.dispose();
    _articleIconSlideController.dispose();
    _chatIconSlideController.dispose();
    _videoIconSlideController.dispose();
    super.dispose();
  }

  NavigationRailDestination slideInNavigationItem({
    required double begin,
    required AnimationController controller,
    required IconData icon,
    required String label,
  }) {
    return NavigationRailDestination(
      icon: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(
            begin,
            0,
          ),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.easeInOutCubic,
          ),
        ),
        child: Icon(icon),
      ),
      label: Text(label),
    );
  }
}
