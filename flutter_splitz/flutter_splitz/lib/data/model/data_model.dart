import 'package:flutter_splitz/domain/mapper/mappable_object.dart';
import 'package:flutter_splitz/domain/model/domain_model.dart';
import 'package:flutter_splitz/resources/config_resources.dart';

class DmMulti implements MappableAsMovie, MappableAsPerson, MappableAsTv {
  int id = 0;
  String title = "";
  String originalTitle = "";
  String releaseDate = "";
  String originalName = "";
  String name = "";
  int voteCount = 0;
  num voteAverage = 0.0;
  String posterPath = "";
  String backdropPath = "";
  String profilePath = "";
  String firstAirDate = "";
  num popularity = 0.0;
  List<int> genreIds;
  String overview = "";
  List<DmMulti> knownFor = List();
  String mediaType = ConfigResources.type_movie;
  bool isFavorite = false;

  @override
  Movie asMovie() {

    var movie = Movie();

    movie.id = id;
    movie.title = title;
    movie.originalTitle = originalTitle;
    movie.releaseDate = releaseDate;
    movie.voteCount = voteCount;
    movie.voteAverage = voteAverage;
    movie.posterPath = posterPath;
    movie.backdropPath = backdropPath;
    movie.popularity = popularity;
    movie.overview = overview;
    movie.mediaType = mediaType;
    movie.isFavorite = isFavorite;

    return movie;
  }

  @override
  Person asPerson() {

    var person = Person();

    person.id = id;
    person.name = name;
    person.profilePath = profilePath;
    person.popularity = popularity;
    person.mediaType = mediaType;
    person.isFavorite = isFavorite;

    if(knownFor != null && knownFor.isNotEmpty) {
      for (var dmMulti in knownFor) {
        person.knownFor.add(dmMulti.asMovie());
      }
    }

    return person;
  }

  @override
  Tv asTv() {

    var tv = Tv();

    tv.id = id;
    tv.originalName = originalName;
    tv.name = name;
    tv.voteCount = voteCount;
    tv.voteAverage = voteAverage;
    tv.posterPath = posterPath;
    tv.backdropPath = backdropPath;
    tv.firstAirDate = firstAirDate;
    tv.popularity = popularity;
    tv.genreIds = genreIds;
    tv.overview = overview;
    tv.isFavorite = isFavorite;

    return tv;
  }
}