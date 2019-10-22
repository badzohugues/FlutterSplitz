
import 'package:flutter_splitz/data/mapper/mappable_entity.dart';
import 'package:flutter_splitz/data/model/data_model.dart';
import 'package:flutter_splitz/resources/config_resources.dart';
import 'package:hive/hive.dart';
part 'database_model.g.dart';

abstract class DbObject extends HiveObject {

  @HiveField(0)
  int id;

  @HiveField(1)
  String mediaType = "";

  @HiveField(2)
  bool isFavorite = false;
}

@HiveType()
class DbMovie extends DbObject implements MappableAsData<DmMulti> {

  @HiveField(3)
  int voteCount = 0;

  @HiveField(4)
  num voteAverage = 0.0;

  @HiveField(5)
  String title = "";

  @HiveField(6)
  num popularity = 0.0;

  @HiveField(7)
  String posterPath = "";

  @HiveField(8)
  String backdropPath = "";

  @HiveField(9)
  String originalTitle = "";

  @HiveField(10)
  String releaseDate = "";

  @HiveField(11)
  String overview = "";

  @HiveField(12)
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
    dmMovie.isFavorite = isFavorite;

    return dmMovie;
  }

}

@HiveType()
class DbPerson extends DbObject implements MappableAsData<DmMulti> {

  @HiveField(3)
  num popularity = 0.0;

  @HiveField(4)
  String name = "";

  @HiveField(5)
  String profilePath = "";

  @HiveField(6)
  List<DbMovie> knownFor = List();

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

    dmPerson.isFavorite = isFavorite;

    return dmPerson;
  }

}

@HiveType()
class DbTv extends DbObject implements MappableAsData<DmMulti> {

  @HiveField(3)
  String name = "";

  @HiveField(4)
  String originalName = "";

  @HiveField(5)
  int voteCount = 0;

  @HiveField(6)
  num voteAverage = 0.0;

  @HiveField(7)
  num popularity = 0.0;

  @HiveField(8)
  String posterPath = "";

  @HiveField(9)
  String backdropPath = "";

  @HiveField(10)
  String firstAirDate = "";

  @HiveField(11)
  List<int> genreIds = List();

  @HiveField(12)
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
    dmTv.isFavorite = isFavorite;

    return dmTv;
  }

}