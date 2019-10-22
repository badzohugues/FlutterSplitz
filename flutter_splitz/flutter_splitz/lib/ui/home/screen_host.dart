import 'package:flutter/material.dart';
import 'package:flutter_splitz/router/router.dart';
import 'package:flutter_splitz/ui/component/splitz_appbar.dart';
import 'package:flutter_splitz/ui/component/splitz_bottom_navigation_bar.dart';
import 'package:flutter_splitz/ui/favorites/fragment_favorites.dart';
import 'package:flutter_splitz/ui/movies/fragment_movies.dart';

import 'fragment_home.dart';

class ScreenHost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScreenHostState();
}

class _ScreenHostState extends State<ScreenHost> implements OnBottomItemTap {

  String title;
  List<Widget> fragments = [FragmentHome(), FragmentMovies(), FragmentFavorites(), FragmentFavorites()];
  Widget currentFragment = FragmentHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SplitzAppBar("Flutter Splitz").build(context),
      bottomNavigationBar:
      Theme(
          data:Theme.of(context).copyWith(
              canvasColor: Colors.black,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: TextStyle(color: Colors.white))),

          child: SplitzBottomNavigationBar(listener: this)),

      body: Center(
          child: currentFragment
      ),
    );
  }

  @override
  onBottomItemTap(String title, String route) {
    setState(() {
      currentFragment = Router.getWidgetByRoute(route);
      print("Route: " + route);
    });
  }
}