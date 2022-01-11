import 'package:flutter/material.dart';
import 'package:pikotea_project/utils/dialogs.dart';

class LayoutTemplate extends StatelessWidget {
  late Widget child;
  Widget? endDrawer;

  LayoutTemplate({required this.child, this.endDrawer});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("¡Hola Pikotea!"),
        ),
        body: child,
        endDrawer: endDrawer,
      ),
    );
  }
}
