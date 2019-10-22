import 'package:flutter/material.dart';

class SplitzAppBar extends StatelessWidget {

  String appBarTitle = "";

  SplitzAppBar(String title) {
    appBarTitle = title;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(appBarTitle),
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.white
        )
    );
  }

  void setAppBarTitle(String title) {
    appBarTitle = title;
  }
}