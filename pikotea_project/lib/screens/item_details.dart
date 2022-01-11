import 'package:flutter/material.dart';
import 'package:pikotea_project/screens/layout_template.dart';
import 'package:pikotea_project/statics/items.dart';

/// This screen displays the details of an item is tapped on the items list.
class ItemDetails extends StatelessWidget {
  static const String route = "/details";

  ItemDetails({Key? key, this.index}) : super(key: key);

  int? index;

  @override
  Widget build(BuildContext context) {
    var arguments = null;

    if(ModalRoute.of(context)?.settings.arguments != null) {
      arguments = ModalRoute.of(context)?.settings.arguments as Map;
    }

    if(arguments != null) {
      if (arguments.length == 0)  {
        index = 100;
      } else if (arguments['id'] < 6 || arguments['id'] > 0){
        index = arguments['id'];
      } else {
        index = 100;
      }
    } else {
      index ??= 100;
    }

    return LayoutTemplate(
      child: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: index != 100
                ? <Widget>[
                    Image.asset(itemsMap.values.elementAt(index!)),
                    Text(
                      itemsMap.keys.elementAt(index!),
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    )
                  ]
                : <Widget>[
                    Image.network('https://picsum.photos/id/237/200'),
                    Text(
                      "Random image",
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ]),
      ),
    );
  }
}
