import 'package:flutter/material.dart';
import 'package:journeys/widgets/landing_body_with_button.dart';
import 'package:journeys/widgets/landing_image.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 60, child: LandingImage()),
          Expanded(flex: 40, child: LandingbodyWithButton()),
        ],
      ),
    );
  }
}
