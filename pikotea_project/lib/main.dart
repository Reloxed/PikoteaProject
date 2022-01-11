import 'package:flutter/material.dart';
import 'package:pikotea_project/screens/home.dart';
import 'package:pikotea_project/screens/item_details.dart';
import 'package:pikotea_project/screens/items_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        Home.route: (context) => Home(),
        ItemsList.route: (context) => ItemsList(),
        ItemDetails.route: (context) => ItemDetails(),
      },
      onGenerateRoute: (settings) {
        final settingsUri = Uri.parse(settings.name!);
        int index = 100;
        if (settingsUri.path == ItemDetails.route) {
          index = int.parse(settingsUri.queryParameters['id']!);
          if (index > 6 || index < 0) {
            index = 100;
          }
        }
        return MaterialPageRoute(
          builder: (context) {
            return ItemDetails(index: index);
          },
        );
      },
    );
  }
}
