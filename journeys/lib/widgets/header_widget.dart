import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journeys/utils/assets.dart';
import 'package:journeys/utils/colors.dart';
import 'package:journeys/utils/tiles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.location_on_outlined, color: Colors.black, size: 30),
            SizedBox(width: 5),
            Text(
              Tiles.locationTitle,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: JourneyColors.lightGreen,
                shape: BoxShape.circle,
              ),
              child: Icon(CupertinoIcons.search, size: 30),
            ),
            SizedBox(width: 5),

            Container(
              height: 55,
              width: 55,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.lightGreen, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(Assets.profile, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
