import 'package:fpdart/fpdart.dart';
import 'package:smart_thrift/core/error/failure.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
