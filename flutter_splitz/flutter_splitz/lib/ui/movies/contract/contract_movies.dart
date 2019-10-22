import 'package:flutter_splitz/domain/model/domain_model.dart';

abstract class View {
  void showMovies(List<Movie> movies);
  void showError(String message);
}

abstract class Presenter {
  Future searchMovies(String query);
  Future getMovies();
  Future getPopularMovies();
}