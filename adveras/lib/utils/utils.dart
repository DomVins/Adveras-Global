import 'package:flutter/material.dart';

import '../models/models.dart';
import '../custom_widgets/custom_widgets.dart';

List<Widget> products(List<ProductModel> productsList) {
  List<Widget> p = [];
  for (var c in productsList) {
    p.add(product(c));
  }
  return p;
}

List<Widget> similarProducts(List<ProductModel> productsList) {
  List<Widget> p = [];
  for (var c in productsList) {
    p.add(similarProduct(c));
  }
  return p;
}

Widget categorySet(List<CategoryModel> chunk) {
  List<Widget> p = [];
  for (var c in chunk) {
    p.add(categoryItem(c));
  }
  return Column(
    children: p,
  );
}

List<Widget> catSets(List list) {
  List<Widget> p = [];
  List chunks = [];
  const int chunkSize = 4;
  int len = list.length;

  for (var i = 0; i < len; i += 4) {
    int size = i + chunkSize;
    chunks.add(list.sublist(i, size > len ? len : size));
  }

  for (var c in chunks) {
    p.add(categorySet(c));
  }
  return p;
}

List<Widget> subProductCats(List<SubProductCategoryModel> subProductsList) {
  List<Widget> p = [];
  for (var c in subProductsList) {
    p.add(subProductCategory(c));
  }
  return p;
}

  companiesList(List<CompanyModel> companies) {
    List<Widget> temp = [];
    for (int i = 0; i < companies.length; i++) {
      temp.add(distributorCompanyItem(companies[i]));
    }
    return Column(
      children: temp,
    );
  }
