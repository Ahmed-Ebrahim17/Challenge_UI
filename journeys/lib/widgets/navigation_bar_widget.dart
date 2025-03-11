import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int selectedIndex = 0;
  final List<IconData> icons = [
    CupertinoIcons.home,
    CupertinoIcons.location_fill,
    CupertinoIcons.calendar_today,
    CupertinoIcons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var index = 0; index < icons.length; index++)
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 4),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 150),
                width: selectedIndex == index ? 110 : 75,
                height: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      decoration: BoxDecoration(color: Colors.black54),
                      child: Icon(
                        icons[index],
                        size: 28,
                        color:
                            selectedIndex == index ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
