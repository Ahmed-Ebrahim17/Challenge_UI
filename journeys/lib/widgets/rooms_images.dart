import 'dart:math';

import 'package:flutter/material.dart';
import 'package:journeys/utils/assets.dart';
import 'package:journeys/utils/colors.dart';

class RoomsImage extends StatelessWidget {
  const RoomsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Stack(
        children: [
          for (var i = 0; i < 4; i++)
            Positioned(
              left: i * 28,
              top: 0,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    Assets.scenaryList[Random.secure().nextInt(16)],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          Positioned(
            top: 0,
            left: 4 * 28,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: JourneyColors.lightGreen2,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 4),
              ),
              child: Center(
                child: Text(
                  "View\nRooms",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: JourneyColors.darkGreen,
                    letterSpacing: .1,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
