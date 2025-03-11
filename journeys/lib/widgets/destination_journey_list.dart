import 'package:flutter/material.dart';
import 'package:journeys/pages/details_page.dart';
import 'package:journeys/utils/assets.dart';

class DestinationJourneyList extends StatelessWidget {
  const DestinationJourneyList({super.key, required this.shiftIndex});

  final int shiftIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (_) => DetailsPage(index: index, shiftIndex: shiftIndex),
                ),
              );
            },
            child: Hero(
              tag: 'scenary$index$shiftIndex',
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 0.85,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 260),
                            child: Image.asset(
                              Assets.scenaryList[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(.75),
                                  Colors.black.withOpacity(.25),
                                  Colors.black.withOpacity(.01),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 0,
                          left: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tailwind Mountain",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
