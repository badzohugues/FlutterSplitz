import 'package:flutter_splitz/domain/model/domain_model.dart';

abstract class MappableAsMovie {
  Movie asMovie();
}

abstract class MappableAsTv {
  Tv asTv();
}

abstract class MappableAsPerson {
  Person asPerson();
}