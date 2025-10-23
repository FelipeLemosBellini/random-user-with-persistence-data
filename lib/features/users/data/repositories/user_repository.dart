import 'package:random_user_data_persistence/features/users/data/datasources/user_remote_data_source.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';
import 'package:result_dart/result_dart.dart';

class UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepository({required this.userRemoteDataSource});

  Future<Result<UserModel>> getUser() async {
    try {
      final response = await userRemoteDataSource.getNewUser();

      return Success(response.results.first);
    } catch (e) {
      return Failure(Exception(e));
    }
  }
}
