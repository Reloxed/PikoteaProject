/* Auxiliary class where navigations inside the app are defined.*/

import 'package:flutter/material.dart';
import 'package:pikotea_project/screens/home.dart';
import 'package:pikotea_project/screens/item_details.dart';
import 'package:pikotea_project/screens/items_list.dart';

void navigateToItemsList(BuildContext context) {
  Navigator.of(context).pushNamed(ItemsList.route);
}

void navigateToItemDetails(BuildContext context, int index) {
  Navigator.of(context).pushNamed(ItemDetails.route, arguments: {'id': index});
}

void navigateToHome(BuildContext context) {
  Navigator.of(context)
      .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
}
