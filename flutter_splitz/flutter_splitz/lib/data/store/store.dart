import 'package:flutter_splitz/data/model/data_model.dart';

abstract class MultiStore {
  Future<List<DmMulti>> searchMulti(String query);
  Future<List<DmMulti>> getPopularMovies();
  Future<List<DmMulti>> getAll();
  Future<DmMulti> getMulti(int id);
}