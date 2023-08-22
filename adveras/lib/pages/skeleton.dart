import 'package:adveras/pages/skeleton_contents/cart.dart';
import 'package:adveras/pages/skeleton_contents/profile.dart';
import 'package:adveras/pages/skeleton_contents/store.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'skeleton_contents/home.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key, required this.title});

  final String title;

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int index = 0;

  final screens = const [
    Center(
      child: Home(),
    ),
    Center(
      child: Store(),
    ),
    Center(
      child: Cart(),
    ),
    Center(
      child: Profile(),
    ),
    Center(
      child: Text(""),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: const Color.fromARGB(155, 80, 92, 161),
            labelTextStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: generalTextColor))),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14), topRight: Radius.circular(14)),
          child: NavigationBar(
            height: 60,
            backgroundColor: bottomNavBarColor,
            selectedIndex: index,
            onDestinationSelected: (value) => setState(() {
              index = value;
            }),
            destinations: [
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.home,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.home_outlined,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Home'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.shopify,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.shopify_outlined,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Store'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.shopping_cart,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Cart'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.person,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.person_outlined,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Profile'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.chat_bubble,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Messages'),
            ],
          ),
        ),
      ),
    );
  }
}
