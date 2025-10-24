import 'package:random_user_data_persistence/core/network/dio_client.dart';
import 'package:random_user_data_persistence/features/users/data/model/random_user_response_model.dart';

abstract class UserRemoteDataSourceInterface {
  Future<RandomUserResponseModel> getNewUser();
}

class UserRemoteDataSource implements UserRemoteDataSourceInterface {
  final DioClient dioClient;

  UserRemoteDataSource({required this.dioClient});

  @override
  Future<RandomUserResponseModel> getNewUser() async {
    final response = await dioClient.dio.get('/api');

    return RandomUserResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }
}
