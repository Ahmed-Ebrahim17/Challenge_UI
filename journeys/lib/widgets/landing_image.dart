import 'package:flutter/material.dart';
import 'package:journeys/utils/assets.dart';

class LandingImage extends StatelessWidget {
  const LandingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        child: Image.asset(Assets.scenaryList[1], fit: BoxFit.cover),
      ),
    );
  }
}
