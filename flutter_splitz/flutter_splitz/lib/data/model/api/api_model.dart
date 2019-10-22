import 'package:flutter_splitz/data/mapper/mappable_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../data_model.dart';

part 'api_model.g.dart';

@JsonSerializable(nullable: true)
class ApiResponseError {
  @JsonKey(name: 'status_code')
  int statusCode;
  bool success;
  @JsonKey(name: 'status_message')
  String statusMessage;

  ApiResponseError({
    this.success,
    this.statusCode,
    this.statusMessage
  });

  static const fromJsonFactory = _$ApiResponseErrorFromJson;
  Map<String, dynamic> toJson() => _$ApiResponseErrorToJson(this);
}

@JsonSerializable(nullable: true)
class ApiMultiResult {
  int page;
  @JsonKey(name: 'total_pages')
  int totalPages;
  @JsonKey(name: 'total_results')
  int totalResults;

  List<ApiMulti> results;

  ApiMultiResult({
    this.page,
    this.totalPages,
    this.totalResults,
    this.results,
  });

  static const fromJsonFactory = _$ApiMultiResultFromJson;
  Map<String, dynamic> toJson() => _$ApiMultiResultToJson(this);
}

@JsonSerializable(nullable: true)
class ApiMulti implements MappableAsData<DmMulti> {
  int id = 0;
  String title = "";

  @JsonKey(name: 'original_title')
  String originalTitle = "";

  @JsonKey(name: 'release_date')
  String releaseDate = "";

  @JsonKey(name: 'original_name')
  String originalName = "";

  String name = "";

  @JsonKey(name: 'vote_count')
  int voteCount = 0;

  @JsonKey(name: 'vote_average')
  num voteAverage = 0.0;

  @JsonKey(name: 'poster_path')
  String posterPath = "";

  @JsonKey(name: 'backdrop_path')
  String backdropPath = "";

  @JsonKey(name: 'profile_path')
  String profilePath = "";

  @JsonKey(name: 'first_air_date')
  String firstAirDate = "";

  num popularity = 0.0;

  @JsonKey(name: 'genre_ids')
  List<int> genreIds;

  String overview = "";

  @JsonKey(name: 'known_for')
  List<ApiMulti> knownFor = List();

  @JsonKey(name: 'media_type')
  String mediaType = "";


  ApiMulti({
    this.id,
    this.title,
    this.originalTitle,
    this.originalName,
    this.releaseDate,
    this.name,
    this.voteCount,
    this.voteAverage,
    this.posterPath,
    this.backdropPath,
    this.profilePath,
    this.firstAirDate,
    this.popularity,
    this.genreIds,
    this.overview,
    this.knownFor,
    this.mediaType
  });

  static const fromJsonFactory = _$ApiMultiFromJson;
  Map<String, dynamic> toJson() => _$ApiMultiToJson(this);

  @override
  DmMulti asData() {

    var dmMulti = DmMulti();

    dmMulti.id = id;
    dmMulti.title = title;
    dmMulti.originalTitle = originalTitle;
    dmMulti.originalName = originalName;
    dmMulti.releaseDate = releaseDate;
    dmMulti.name = name;
    dmMulti.voteCount = voteCount;
    dmMulti.voteAverage = voteAverage;
    dmMulti.posterPath = posterPath;
    dmMulti.backdropPath = backdropPath;
    dmMulti.profilePath = profilePath;
    dmMulti.firstAirDate = firstAirDate;
    dmMulti.popularity = popularity;
    dmMulti.genreIds = genreIds;
    dmMulti.overview = overview;
    dmMulti.mediaType = mediaType;


    if(knownFor != null && knownFor.isNotEmpty) {
      for (var apiMulti in knownFor) {
        dmMulti.knownFor.add(apiMulti.asData());
      }
    }

    return dmMulti;
  }
}
