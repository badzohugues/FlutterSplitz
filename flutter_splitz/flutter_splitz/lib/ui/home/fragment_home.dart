import 'package:flutter/material.dart';

class FragmentHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FragmentHomeState();
}

class _FragmentHomeState extends State<FragmentHome> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("Home Fragment")
    );
  }
}