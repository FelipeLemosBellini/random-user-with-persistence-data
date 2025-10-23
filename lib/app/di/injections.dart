import 'package:get_it/get_it.dart';
import 'package:random_user_data_persistence/core/local_storage/app_database.dart';
import 'package:random_user_data_persistence/core/network/dio_client.dart';
import 'package:random_user_data_persistence/features/users/data/datasources/user_local_data_source.dart';
import 'package:random_user_data_persistence/features/users/data/datasources/user_remote_data_source.dart';
import 'package:random_user_data_persistence/features/users/data/repositories/user_repository.dart';
import 'package:random_user_data_persistence/features/users/presentation/view_model/details_cubit.dart';
import 'package:random_user_data_persistence/features/users/presentation/view_model/home_cubit.dart';
import 'package:random_user_data_persistence/features/users/presentation/view_model/persisted_users_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  //Core
  getIt.registerSingleton(AppDatabase());
  getIt.registerSingleton<DioClient>(
    DioClient(baseUrl: "https://randomuser.me"),
  );

  //DataSource
  getIt.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSource(dioClient: getIt.get<DioClient>()),
  );
  getIt.registerLazySingleton(
    () => UserLocalDataSource(appDatabase: getIt.get<AppDatabase>()),
  );

  //Repository
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(
      userRemoteDataSource: getIt.get<UserRemoteDataSource>(),
      userLocalDataSource: getIt.get<UserLocalDataSource>(),
    ),
  );

  //View-Model
  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(userRepository: getIt.get<UserRepository>()),
  );
  getIt.registerFactory<DetailsCubit>(
    () => DetailsCubit(userRepository: getIt.get<UserRepository>()),
  );
  getIt.registerFactory<PersistedUsersCubit>(
    () => PersistedUsersCubit(userRepository: getIt.get<UserRepository>()),
  );
}
