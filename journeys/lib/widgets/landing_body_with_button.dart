import 'package:flutter/material.dart';
import 'package:journeys/pages/home_page.dart';
import 'package:journeys/utils/tiles.dart';
import 'package:journeys/widgets/confirm_button.dart';
import 'package:journeys/widgets/landing_body_heading.dart';

class LandingbodyWithButton extends StatelessWidget {
  const LandingbodyWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          LandingBodyHeading(),
          SizedBox(height: 50),
          ConfirmButton(
            data: Tiles.buttonText,
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => HomePage()),
                ),
          ),
        ],
      ),
    );
  }
}
