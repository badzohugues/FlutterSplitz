// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$TmDbApi extends TmDbApi {
  _$TmDbApi([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = TmDbApi;

  Future<Response<ApiMultiResult>> getPopularMovies(
      dynamic apiKey, dynamic language, dynamic sortBy) {
    final $url = '/3/discover/movie';
    final Map<String, dynamic> $params = {
      'api_key': apiKey,
      'language': language,
      'sort_by': sortBy
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ApiMultiResult, ApiMultiResult>($request);
  }

  Future<Response<ApiMultiResult>> searchMulti(
      dynamic apiKey, dynamic language, dynamic query) {
    final $url = '/3/search/multi';
    final Map<String, dynamic> $params = {
      'api_key': apiKey,
      'language': language
    };
    $params.addAll(query);
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ApiMultiResult, ApiMultiResult>($request);
  }
}
