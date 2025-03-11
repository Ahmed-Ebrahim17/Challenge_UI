import 'package:flutter/material.dart';
import 'package:journeys/utils/styles.dart';
import 'package:journeys/utils/tiles.dart';

class WelcomeAndAMindWanderHeading extends StatelessWidget {
  const WelcomeAndAMindWanderHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: Tiles.welcomeBackTitle,
            style: Styles.mediumTextStyle18,
            children: [TextSpan(text: "Ella", style: Styles.mediumTextStyle27)],
          ),
        ),
        SizedBox(height: 10),
        Text(Tiles.mindWanderTitle, style: Styles.regularTextStyle36),
      ],
    );
  }
}
