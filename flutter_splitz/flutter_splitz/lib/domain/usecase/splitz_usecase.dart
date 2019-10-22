import 'package:flutter_splitz/domain/model/domain_model.dart';

abstract class ListUsecase {
  Future<List<Movie>> getMoviesList();
  Future<List<Movie>> getPopularMovies();
}

abstract class SearchUseCase {
  Future<List<Movie>> searchMovies(String query);
}

abstract class FavoriteUseCase {
  Future<int> addToFavorites(Movie movie);
  Future<int> deleteFavorite(int id);
  Future<List<Multi>> getAllFavorites();
}