import 'package:flutter/material.dart';
import 'package:journeys/utils/colors.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 70,
      decoration: BoxDecoration(
        color: JourneyColors.lightGreen2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.orange, size: 22),
          SizedBox(width: 5),
          Text(
            "4.5",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
