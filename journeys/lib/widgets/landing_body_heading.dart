import 'package:flutter/material.dart';
import 'package:journeys/utils/styles.dart';
import 'package:journeys/utils/tiles.dart';

class LandingBodyHeading extends StatelessWidget {
  const LandingBodyHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Tiles.landingPageTitle, style: Styles.regularTextStyle36),
        SizedBox(height: 15),
        Text(Tiles.landingPageSubTitle, style: Styles.subHeadTextStyle17),
      ],
    );
  }
}
