import 'package:flutter/material.dart';
import 'package:journeys/widgets/rooms_images.dart';

class RoomsImageWidget extends StatelessWidget {
  const RoomsImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          RoomsImage(),
          SizedBox(width: 10),
          Text(
            '\$280',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              letterSpacing: .1,
            ),
          ),
          const SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text(
              'Per Night',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade800,
                letterSpacing: .1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
