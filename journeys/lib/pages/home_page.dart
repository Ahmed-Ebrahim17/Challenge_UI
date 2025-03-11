import 'package:flutter/material.dart';
import 'package:journeys/widgets/categories_list.dart';
import 'package:journeys/widgets/destination_journey_list.dart';
import 'package:journeys/widgets/header_widget.dart';
import 'package:journeys/widgets/navigation_bar_widget.dart';
import 'package:journeys/widgets/welcome_and_mind_wander_heading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  SizedBox(height: 60),
                  HeaderWidget(),
                  SizedBox(height: 10),
                  WelcomeAndAMindWanderHeading(),
                  SizedBox(height: 20),
                  CategoriesList(),
                  SizedBox(height: 20),
                  DestinationJourneyList(shiftIndex: 0),
                  SizedBox(height: 20),
                  DestinationJourneyList(shiftIndex: 5),
                  SizedBox(height: 20),
                  DestinationJourneyList(shiftIndex: 9),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: NavigationBarWidget(),
          ),
        ],
      ),
    );
  }
}
