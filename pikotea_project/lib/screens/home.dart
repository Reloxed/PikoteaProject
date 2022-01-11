import 'package:flutter/material.dart';
import 'package:pikotea_project/utils/navigators.dart';

import 'layout_template.dart';

class Home extends StatelessWidget {
  static const String route = "/";

  @override
  Widget build(BuildContext context) {
    return LayoutTemplate(
        child: Container(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                navigateToItemsList(context);
              },
              child: Text("¡Púlsame!"),
            ),
          ),
        ));
  }
}