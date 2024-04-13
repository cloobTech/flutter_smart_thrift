import 'package:fpdart/fpdart.dart';
import 'package:smart_thrift/core/error/failure.dart';
import 'package:smart_thrift/core/usecase/usecase.dart';
import 'package:smart_thrift/features/auth/domain/repository/auth_repository.dart';

class SignInUserCase implements UseCase<String, UserParams> {
  final AuthRepository _authRepository;

  SignInUserCase(this._authRepository);
  @override
  Future<Either<Failure, String>> call(UserParams params) async {
    return await _authRepository.signInWithEmailAndPassword(
        email: params.email, password: params.password);
  }
}

class UserParams {
  final String email;
  final String password;

  UserParams({required this.email, required this.password});
}
