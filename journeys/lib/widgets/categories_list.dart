import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int selectedIndex = 0;
  final List<String> categories = [
    'All',
    'Nature',
    'Mountains',
    'Beaches',
    'Cities',
    'Countryside',
    'Deserts',
    'Forests',
    'Islands',
    'Lakes',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        padding: EdgeInsets.only(left: 5),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),

                padding: const EdgeInsets.symmetric(horizontal: 28),

                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        selectedIndex == index
                            ? Colors.transparent
                            : Colors.grey.shade300,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  color: selectedIndex == index ? Colors.black : Colors.white,
                ),
                alignment: Alignment.center,
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight:
                        selectedIndex == index
                            ? FontWeight.w400
                            : FontWeight.w300,
                    color: selectedIndex == index ? Colors.white : Colors.black,
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
