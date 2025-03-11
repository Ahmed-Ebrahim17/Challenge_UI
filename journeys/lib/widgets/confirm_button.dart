import 'package:flutter/material.dart';
import 'package:journeys/utils/colors.dart';
import 'package:journeys/utils/styles.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key, this.onPressed, required this.data});
  final void Function()? onPressed;
  final String data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: JourneyColors.green),
        onPressed: onPressed,
        child: Text(data, style: Styles.buttonTextStyle21),
      ),
    );
  }
}
