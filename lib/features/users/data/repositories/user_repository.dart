import 'package:random_user_data_persistence/features/users/data/datasources/user_local_data_source.dart';
import 'package:random_user_data_persistence/features/users/data/datasources/user_remote_data_source.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';
import 'package:result_dart/result_dart.dart';

abstract class UserRepositoryInterface {
  Future<Result<UserModel>> getUser();

  Future<Result<void>> saveUser({required UserModel user});

  Future<Result<void>> removeUser({required UserModel user});

  Future<Result<List<UserModel>>> getLocalListUsers();
}

class UserRepository implements UserRepositoryInterface {
  final UserRemoteDataSource userRemoteDataSource;
  final UserLocalDataSource userLocalDataSource;

  UserRepository({
    required this.userRemoteDataSource,
    required this.userLocalDataSource,
  });

  @override
  Future<Result<UserModel>> getUser() async {
    try {
      final response = await userRemoteDataSource.getNewUser();

      return Success(response.results.first);
    } catch (e) {
      return Failure(Exception(e));
    }
  }

  @override
  Future<Result<void>> saveUser({required UserModel user}) async {
    try {
      await userLocalDataSource.saveUser(user);
      return Success('');
    } catch (e) {
      return Failure(Exception(e));
    }
  }

  @override
  Future<Result<void>> removeUser({required UserModel user}) async {
    try {
      await userLocalDataSource.deleteByUuid(user.login.uuid);
      return Success('');
    } catch (e) {
      return Failure(Exception(e));
    }
  }

  @override
  Future<Result<List<UserModel>>> getLocalListUsers() async {
    try {
      final response = await userLocalDataSource.listAllUsers();
      return Success(response);
    } catch (e) {
      return Failure(Exception(e));
    }
  }
}
