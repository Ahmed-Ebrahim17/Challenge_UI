import 'package:flutter/material.dart';
import 'package:journeys/utils/colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Relaxing Pine Village",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            letterSpacing: -.6,
          ),
        ),
        Container(
          width: 70,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade300,
          ),
          child: Center(
            child: Text(
              "4.5km",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: JourneyColors.darkGreen,
                letterSpacing: .1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
