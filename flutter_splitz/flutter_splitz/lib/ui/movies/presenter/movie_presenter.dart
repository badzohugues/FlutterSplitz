import 'package:flutter_splitz/domain/interactor/splitz_interactor.dart';
import 'package:flutter_splitz/ui/movies/contract/contract_movies.dart';

class MoviesPresenter implements Presenter {

  MovieInteractor interactor = MovieInteractor();
  View view;

  MoviesPresenter(this.view);

  @override
  Future getMovies() {
    return null;
  }

  @override
  Future getPopularMovies() async {
    return await interactor.getPopularMovies()
        .then((onValue){
      view.showMovies(onValue);
    })
        .catchError((onError){
      view.showError(onError.toString());
    });
  }

  @override
  Future searchMovies(String query) async {
    return await interactor.searchMovies(query).then((onValue){
      view.showMovies(onValue);
    }).catchError((onError){
      view.showError(onError.toString());
    });
  }

}