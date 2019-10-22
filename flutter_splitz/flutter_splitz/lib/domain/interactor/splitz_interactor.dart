
import 'package:flutter_splitz/data/repository/movie_repository.dart';
import 'package:flutter_splitz/data/repository/multi_repository.dart';
import 'package:flutter_splitz/domain/model/domain_model.dart';
import 'package:flutter_splitz/domain/usecase/splitz_usecase.dart';

class MovieInteractor implements ListUsecase, SearchUseCase {
  @override
  Future<List<Movie>> getMoviesList() {
    return null;
  }

  @override
  Future<List<Movie>> searchMovies(String query) {
    return  null;
  }

  @override
  Future<List<Movie>> getPopularMovies() {
    return MovieRepository().getPopularMovies().then((onMovies) {

      List<Movie> movies = List();

      for(var dmMulti in onMovies) {
        movies.add(dmMulti.asMovie());
      }
      return movies;
    });
  }
}

class FavoriteInteractor implements FavoriteUseCase {
  @override
  Future<int> addToFavorites(Multi multi) {
    return null;
  }

  @override
  Future<List<Multi>> getAllFavorites() {
    return null;
  }

  @override
  Future<int> deleteFavorite(int id) {
    return null;
  }
  
}