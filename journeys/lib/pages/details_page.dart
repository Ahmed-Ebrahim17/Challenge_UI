import 'package:flutter/material.dart';
import 'package:journeys/utils/assets.dart';
import 'package:journeys/utils/colors.dart';
import 'package:journeys/utils/styles.dart';
import 'package:journeys/utils/tiles.dart';
import 'package:journeys/widgets/amenities_list.dart';
import 'package:journeys/widgets/back_button.dart';
import 'package:journeys/widgets/menu_button.dart';
import 'package:journeys/widgets/rating_widget.dart';
import 'package:journeys/widgets/rooms_image_widget.dart';
import 'package:journeys/widgets/title_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.index, required this.shiftIndex});
  final int index, shiftIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height + 260,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        child: Hero(
                          tag: 'scenary$index$shiftIndex',
                          child: AnimatedContainer(
                            height: MediaQuery.sizeOf(context).height * 0.54,
                            duration: Duration(milliseconds: 200),
                            child: Image.asset(
                              Assets.scenaryList[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      BackUpButton(),
                      MenuButton(),
                      Positioned(
                        top: MediaQuery.sizeOf(context).height * 0.47,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(55),
                              topRight: Radius.circular(55),
                            ),
                          ),
                          padding: const EdgeInsets.only(
                            left: 25,
                            right: 25,
                            top: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RatingWidget(),
                              SizedBox(height: 10),
                              TitleWidget(),
                              SizedBox(height: 8),
                              Text(
                                "4 Bedroom, 2 Guest, 2 Bath",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade800,
                                  letterSpacing: .1,
                                ),
                              ),
                              SizedBox(height: 10),
                              RoomsImageWidget(),
                              SizedBox(height: 15),
                              Text(
                                'Amenities',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  letterSpacing: -.6,
                                ),
                              ),
                              const SizedBox(height: 10),
                              AmenitiesList(),
                              SizedBox(height: 10),
                              Text(
                                "About Pine Village",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  letterSpacing: -.6,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                Tiles.detailsAbout,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  letterSpacing: -.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: JourneyColors.green,
                  ),
                  onPressed: () {},
                  child: Text(Tiles.bookNow, style: Styles.buttonTextStyle21),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
