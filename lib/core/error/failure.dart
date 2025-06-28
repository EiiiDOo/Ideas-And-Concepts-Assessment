class Failure {
  final String errMsg;

  Failure({required this.errMsg});
}

class FireStoreFailure extends Failure{
  FireStoreFailure({required super.errMsg});
}
