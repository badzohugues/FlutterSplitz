import 'package:chopper/chopper.dart';
import 'package:flutter_splitz/data/model/api/api_model.dart';
import 'package:flutter_splitz/resources/config_resources.dart';

part 'tmdb_api.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class TmDbApi extends ChopperService {
  static TmDbApi create([ChopperClient client]) => _$TmDbApi(client);

  @Get(path: "3/discover/movie")
  Future<Response<ApiMultiResult>> getPopularMovies(
      @Query(ConfigResources.tmdb_api_key_param) apiKey,
      @Query(ConfigResources.tmdb_language_param) language,
      @Query(ConfigResources.tmdb_sort_by_param) sortBy);

  @Get(path: "3/search/multi")
  Future<Response<ApiMultiResult>> searchMulti(
      @Query(ConfigResources.tmdb_api_key_param) apiKey,
      @Query(ConfigResources.tmdb_language_param) language,
      @QueryMap() query);
}
