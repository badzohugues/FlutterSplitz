import 'package:flutter_splitz/data/model/data_model.dart';
import 'package:flutter_splitz/data/store/net/chopper/factory/api_factory.dart';
import 'package:flutter_splitz/resources/config_resources.dart';

class MultiService extends ServiceFactory {

  Future<List<DmMulti>> searchMulti(String query) {

    return getApi().searchMulti(ConfigResources.tmdb_api_key,
        ConfigResources.tmdb_language, query).then((onResult) {

          if(onResult.body == null) {
            return throw(handleError(onResult));
          } else {

            List<DmMulti> dmMultis = List();

            for(var apiMulti in onResult.body.results) {
              dmMultis.add(apiMulti.asData());
            }
            return dmMultis;
          }

        }).catchError((onError) {
          return throw(onError);
        });
  }

  Future<List<DmMulti>> fetchPopularMovies() {

    return getApi().getPopularMovies(ConfigResources.tmdb_api_key,
        ConfigResources.tmdb_language,
        "popularity.desc").then((onResult) {

          if(onResult.body == null) {
            return throw(handleError(onResult));
          } else {

            List<DmMulti> dmMultis = List();

            for(var apiMulti in onResult.body.results) {
              dmMultis.add(apiMulti.asData());
            }
            return dmMultis;
          }

        }).catchError((onError) {
          return throw(onError);
        });
  }
}