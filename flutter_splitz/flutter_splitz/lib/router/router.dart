import 'package:flutter/material.dart';
import 'package:flutter_splitz/ui/favorites/fragment_favorites.dart';
import 'package:flutter_splitz/ui/home/fragment_home.dart';
import 'package:flutter_splitz/ui/home/screen_host.dart';
import 'package:flutter_splitz/ui/movies/fragment_movies.dart';
import 'package:flutter_splitz/ui/splash/splash_screen.dart';

class TmDbRouter {

  static const String ROOT = "mazarslive://app";
  static const String HOME = ROOT + "/home";
  static const String MOVIES = ROOT + "/movies";
  static const String FAVORITES = ROOT + "/favorites";

  Map <String, WidgetBuilder> call(BuildContext context) => <String, WidgetBuilder> {
    '/': (context) => SplashScreen(),
    HOME: (context) => ScreenHost(),
    FAVORITES: (context) => FragmentFavorites(),
    MOVIES: (context) => FragmentMovies(),
  };

  static Widget getWidgetByRoute(String route) {
    switch (route) {
      case HOME:
        return FragmentHome();
        break;

      case FAVORITES:
        return FragmentFavorites();
        break;

      case MOVIES:
        return FragmentMovies();
        break;

      default:
        return ScreenHost();
    }
  }
}