// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DbMovieAdapter extends TypeAdapter<DbMovie> {
  @override
  DbMovie read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DbMovie()
      ..voteCount = fields[3] as int
      ..voteAverage = fields[4] as num
      ..title = fields[5] as String
      ..popularity = fields[6] as num
      ..posterPath = fields[7] as String
      ..backdropPath = fields[8] as String
      ..originalTitle = fields[9] as String
      ..releaseDate = fields[10] as String
      ..overview = fields[11] as String
      ..genreIds = (fields[12] as List)?.cast<int>();
  }

  @override
  void write(BinaryWriter writer, DbMovie obj) {
    writer
      ..writeByte(10)
      ..writeByte(3)
      ..write(obj.voteCount)
      ..writeByte(4)
      ..write(obj.voteAverage)
      ..writeByte(5)
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.popularity)
      ..writeByte(7)
      ..write(obj.posterPath)
      ..writeByte(8)
      ..write(obj.backdropPath)
      ..writeByte(9)
      ..write(obj.originalTitle)
      ..writeByte(10)
      ..write(obj.releaseDate)
      ..writeByte(11)
      ..write(obj.overview)
      ..writeByte(12)
      ..write(obj.genreIds);
  }
}

class DbPersonAdapter extends TypeAdapter<DbPerson> {
  @override
  DbPerson read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DbPerson()
      ..popularity = fields[3] as num
      ..name = fields[4] as String
      ..profilePath = fields[5] as String
      ..knownFor = (fields[6] as List)?.cast<DbMovie>();
  }

  @override
  void write(BinaryWriter writer, DbPerson obj) {
    writer
      ..writeByte(4)
      ..writeByte(3)
      ..write(obj.popularity)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.profilePath)
      ..writeByte(6)
      ..write(obj.knownFor);
  }
}

class DbTvAdapter extends TypeAdapter<DbTv> {
  @override
  DbTv read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DbTv()
      ..name = fields[3] as String
      ..originalName = fields[4] as String
      ..voteCount = fields[5] as int
      ..voteAverage = fields[6] as num
      ..popularity = fields[7] as num
      ..posterPath = fields[8] as String
      ..backdropPath = fields[9] as String
      ..firstAirDate = fields[10] as String
      ..genreIds = (fields[11] as List)?.cast<int>()
      ..overview = fields[12] as String;
  }

  @override
  void write(BinaryWriter writer, DbTv obj) {
    writer
      ..writeByte(10)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.originalName)
      ..writeByte(5)
      ..write(obj.voteCount)
      ..writeByte(6)
      ..write(obj.voteAverage)
      ..writeByte(7)
      ..write(obj.popularity)
      ..writeByte(8)
      ..write(obj.posterPath)
      ..writeByte(9)
      ..write(obj.backdropPath)
      ..writeByte(10)
      ..write(obj.firstAirDate)
      ..writeByte(11)
      ..write(obj.genreIds)
      ..writeByte(12)
      ..write(obj.overview);
  }
}
