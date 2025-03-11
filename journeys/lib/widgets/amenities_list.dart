import 'package:flutter/material.dart';
import 'package:journeys/utils/colors.dart';

class AmenitiesList extends StatelessWidget {
  const AmenitiesList({super.key});

  static const amenitiesList = [
    'Wi-fi',
    'Indoor Theatre',
    'Washing Machine',
    'Dishwasher',
    'Indoor Fireplace',
    'Heater',
    'Gym',
  ];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (var index = 0; index < amenitiesList.length; index++)
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: JourneyColors.lightGreen,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.white, width: 3),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  amenitiesList[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: JourneyColors.darkGreen,
                    letterSpacing: .1,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
