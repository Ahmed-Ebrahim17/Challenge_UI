import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackUpButton extends StatelessWidget {
  const BackUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      left: 22,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: AnimatedContainer(
              padding: EdgeInsets.all(16),
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
              child: Icon(CupertinoIcons.chevron_back),
            ),
          ),
        ),
      ),
    );
  }
}
