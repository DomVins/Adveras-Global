import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../constants/colors.dart';
import '../../custom_widgets/custom_widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SafeArea(
            child: searchBar(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 12, top: 10),
                    child: Text(
                      'Latest Products',
                      style: TextStyle(
                          color: generalTextColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: StaggeredGrid.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          children: [
                            tHProduct("HP EliteBook 4420",
                                "assets/images/computer.jpg", 5, "280,000", 5),
                            tHProduct("TP Link", "assets/images/router.png", 5,
                                "5000", 5),
                            tHProduct("Power Bank", "assets/images/bank.jpg", 5,
                                "5000", 5),
                            tHProduct("HP Batteries",
                                "assets/images/battery.jpg", 5, "5000", 5),
                            tHProduct("Cables", "assets/images/cables.jpg", 5,
                                "5000", 5),
                            tHProduct("Laptop Chargers",
                                "assets/images/charger.png", 5, "5000", 5),
                            tHProduct("Projector",
                                "assets/images/projector.png", 5, "5000", 5),
                          ]))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
