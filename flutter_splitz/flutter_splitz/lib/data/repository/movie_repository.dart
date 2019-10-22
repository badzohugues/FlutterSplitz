import 'package:flutter_splitz/data/model/data_model.dart';
import 'package:flutter_splitz/data/store/net/datastore/api_store.dart';

class MovieRepository {
  Future<List<DmMulti>> getPopularMovies() {
    return MultiApiStore().getPopularMovies();
  }
}