// Objects used by Database
abstract class MappableAsDataBase<DB> {
  DB asDatabase();
}

// Objects from Web service
abstract class MappableAsNetwork<N> {
  N asNetwork();
}

// Neutral Object used by
abstract class MappableAsDomain<D> {
  D asDomain();
}

// Object used for UI
abstract class MappableAsData<DM> {
  DM asData();
}