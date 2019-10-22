
import 'package:flutter_splitz/data/mapper/mappable_entity.dart';
import 'package:flutter_splitz/data/model/data_model.dart';
import 'package:flutter_splitz/resources/config_resources.dart';

abstract class Multi {
  int id;
  String mediaType = "";
  bool isFavorite = false;
}

class Movie extends Multi implements MappableAsData<DmMulti> {
  int voteCount = 0;
  num voteAverage = 0.0;
  String title = "";
  num popularity = 0.0;
  String posterPath = "";
  String backdropPath = "";
  String originalTitle = "";
  String releaseDate = "";
  String overview = "";
  List<int> genreIds = new List();


  @override
  DmMulti asData() {
    var dmMovie = DmMulti();

    dmMovie.voteCount = voteCount;
    dmMovie.voteAverage = voteAverage;
    dmMovie.title = title;
    dmMovie.popularity = popularity;
    dmMovie.posterPath = posterPath;
    dmMovie.backdropPath = backdropPath;
    dmMovie.originalTitle = originalTitle;
    dmMovie.releaseDate = releaseDate;
    dmMovie.overview = overview;
    dmMovie.genreIds = genreIds;
    dmMovie.mediaType = ConfigResources.type_movie;

    return dmMovie;
  }
}

class Tv extends Multi implements MappableAsData<DmMulti> {
  String name = "";
  String originalName = "";
  int voteCount = 0;
  num voteAverage = 0.0;
  num popularity = 0.0;
  String posterPath = "";
  String backdropPath = "";
  String firstAirDate = "";
  List<int> genreIds;
  String overview = "";

  @override
  DmMulti asData() {
    var dmTv = DmMulti();

    dmTv.name = name;
    dmTv.originalName = originalName;
    dmTv.voteCount = voteCount;
    dmTv.voteAverage = voteAverage;
    dmTv.popularity = popularity;
    dmTv.posterPath = posterPath;
    dmTv.backdropPath = backdropPath;
    dmTv.firstAirDate = firstAirDate;
    dmTv.genreIds = genreIds;
    dmTv.overview = overview;
    dmTv.mediaType = ConfigResources.type_tv;

    return dmTv;
  }
}

class Person extends Multi implements MappableAsData<DmMulti> {
  num popularity = 0.0;
  String name = "";
  String profilePath = "";
  List<Movie> knownFor = List();

  @override
  DmMulti asData() {
    var dmPerson = DmMulti();

    dmPerson.popularity = popularity;
    dmPerson.name = name;
    dmPerson.profilePath = profilePath;
    dmPerson.mediaType = ConfigResources.type_person;

    if(knownFor != null && knownFor.isNotEmpty) {
      for (var movie in knownFor) {
        dmPerson.knownFor.add(movie.asData());
      }
    }

    return dmPerson;
  }
}