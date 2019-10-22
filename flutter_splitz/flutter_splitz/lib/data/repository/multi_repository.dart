import 'package:flutter_splitz/data/model/data_model.dart';
import 'package:flutter_splitz/data/store/net/datastore/api_store.dart';

class MultiRepository {
  Future<List<DmMulti>> searchMulti(String query) {
    return MultiApiStore().searchMulti(query);
  }
}