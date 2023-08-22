import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import '../../../models/models.dart';
import '../../../utils/utils.dart';
import 'search.dart';

class Category extends StatefulWidget {
  final CategoryModel category;
  const Category({super.key, required this.category});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: generalIconsColor,
            )),
        title: Text(
          widget.category.cat,
          style: TextStyle(color: generalTextColor),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const Search());
              },
              icon: Icon(Icons.search, color: generalIconsColor))
        ],
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 100,
              /*  child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: subProductCats(widget.category.subCatList)), */
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, top: 10),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: labelColor, borderRadius: BorderRadius.circular(6)),
              child: Text(
                'Top Sales',
                style: TextStyle(
                    color: generalTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
