
import 'package:flutter_splitz/data/model/data_model.dart';
import 'package:flutter_splitz/data/store/net/chopper/service/multi_service.dart';
import 'package:flutter_splitz/data/store/store.dart';

class MultiApiStore extends MultiStore {
  @override
  Future<List<DmMulti>> getPopularMovies() {
    return MultiService().fetchPopularMovies();
  }

  @override
  Future<List<DmMulti>> searchMulti(String query) {
    return MultiService().searchMulti(query);
  }

  @override
  Future<List<DmMulti>> getAll() {
    return null;
  }

  @override
  Future<DmMulti> getMulti(int id) {
    return null;
  }
}