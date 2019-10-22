import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter_splitz/data/model/api/api_model.dart';
import 'package:flutter_splitz/data/store/net/chopper/api/tmdb_api.dart';
import 'package:flutter_splitz/data/store/net/chopper/converter/json_serializable_converter.dart';
import 'package:flutter_splitz/resources/config_resources.dart';

abstract class ServiceFactory {

  TmDbApi getApi() {
    final converter = JsonSerializableConverter({
      // Don't forget to add all serializer
      ApiMultiResult: ApiMultiResult.fromJsonFactory,
      ApiMulti: ApiMulti.fromJsonFactory,
    });

    final chopper = new ChopperClient(
      baseUrl: ConfigResources.tmdb_api_url,
      converter: converter,
      services: [
        // the generated service
        TmDbApi.create()
      ],
        interceptors: [
              HeadersInterceptor({'Cache-Control': 'no-cache'}),
              HttpLoggingInterceptor()
        ]
    );

    return chopper.getService<TmDbApi>();
  }

  ApiResponseError handleError(Response response) {
    Map decoded = jsonDecode(response.error);
    ApiResponseError responseError = ApiResponseError.fromJsonFactory(decoded['error']);
    responseError.statusCode = response.base.statusCode;
    return responseError;
  }
}