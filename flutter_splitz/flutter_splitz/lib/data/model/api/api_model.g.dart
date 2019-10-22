// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseError _$ApiResponseErrorFromJson(Map<String, dynamic> json) {
  return ApiResponseError(
    success: json['success'] as bool,
    statusCode: json['status_code'] as int,
    statusMessage: json['status_message'] as String,
  );
}

Map<String, dynamic> _$ApiResponseErrorToJson(ApiResponseError instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'success': instance.success,
      'status_message': instance.statusMessage,
    };

ApiMultiResult _$ApiMultiResultFromJson(Map<String, dynamic> json) {
  return ApiMultiResult(
    page: json['page'] as int,
    totalPages: json['total_pages'] as int,
    totalResults: json['total_results'] as int,
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : ApiMulti.fromJsonFactory(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ApiMultiResultToJson(ApiMultiResult instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.results,
    };

ApiMulti _$ApiMultiFromJson(Map<String, dynamic> json) {
  return ApiMulti(
    id: json['id'] as int,
    title: json['title'] as String,
    originalTitle: json['original_title'] as String,
    originalName: json['original_name'] as String,
    releaseDate: json['release_date'] as String,
    name: json['name'] as String,
    voteCount: json['vote_count'] as int,
    voteAverage: json['vote_average'] as num,
    posterPath: json['poster_path'] as String,
    backdropPath: json['backdrop_path'] as String,
    profilePath: json['profile_path'] as String,
    firstAirDate: json['first_air_date'] as String,
    popularity: json['popularity'] as num,
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    overview: json['overview'] as String,
    knownFor: (json['known_for'] as List)
        ?.map((e) =>
            e == null ? null : ApiMulti.fromJsonFactory(e as Map<String, dynamic>))
        ?.toList(),
    mediaType: json['media_type'] as String,
  );
}

Map<String, dynamic> _$ApiMultiToJson(ApiMulti instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'release_date': instance.releaseDate,
      'original_name': instance.originalName,
      'name': instance.name,
      'vote_count': instance.voteCount,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'profile_path': instance.profilePath,
      'first_air_date': instance.firstAirDate,
      'popularity': instance.popularity,
      'genre_ids': instance.genreIds,
      'overview': instance.overview,
      'known_for': instance.knownFor,
      'media_type': instance.mediaType,
    };
