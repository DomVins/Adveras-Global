import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../constants/colors.dart';
import '../../custom_widgets/custom_widgets.dart';

class Store extends StatelessWidget {
  const Store({super.key});

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
                      'Categories',
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
                            tProduct("Computers", "assets/images/computer.jpg"),
                            tProduct("Routers", "assets/images/router.png"),
                            tProduct("Power Banks", "assets/images/bank.jpg"),
                            tProduct("Batteries", "assets/images/battery.jpg"),
                            tProduct("Cables", "assets/images/cables.jpg"),
                            tProduct("Chargers", "assets/images/charger.png"),
                            tProduct(
                                "Projectors", "assets/images/projector.png"),
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
