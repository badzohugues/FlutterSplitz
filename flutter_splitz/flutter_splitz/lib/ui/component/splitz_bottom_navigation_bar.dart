import 'package:flutter/material.dart';
import 'package:flutter_splitz/router/router.dart';
import 'package:flutter_splitz/theme/splitz_color.dart';

class SplitzBottomNavigationBar extends StatefulWidget {

  final OnBottomItemTap listener;

  SplitzBottomNavigationBar({Key key, @required this.listener}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplitzBottomNavigationBarState(listener);
}

class _SplitzBottomNavigationBarState extends State<SplitzBottomNavigationBar> {

  int _currentIndex = 0;
  OnBottomItemTap listener;
  List<String> titles = ["Home", "Movies", "Favorites", "Search"];
  List<String> routes = [Router.HOME, Router.MOVIES, Router.FAVORITES, Router.FAVORITES];

  _SplitzBottomNavigationBarState(OnBottomItemTap listener) {
    this.listener = listener;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Color(SplitzColors.GREEN_ACCENT),
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(titles[0])
        ),

        BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            title: Text(titles[1])
        ),

        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text(titles[2])
        ),

        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(titles[3])
        ),
      ],
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          listener.onBottomItemTap(titles[_currentIndex], routes[_currentIndex]);
          print("Route: " + routes[_currentIndex]);
//          onBottomMenuTap(context, routes[_currentIndex]);
        });
      },
    );
  }
}

class OnBottomItemTap {
  onBottomItemTap(String title, String route) {
    // to make it abstract
  }
}
