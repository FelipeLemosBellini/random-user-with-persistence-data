import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';
import 'package:random_user_data_persistence/features/users/data/repositories/user_repository.dart';
import 'package:random_user_data_persistence/features/users/presentation/model/details_state.dart';

class SuccessSave extends DetailsState {}

class ErrorSave extends DetailsState {}

class SuccessRemove extends DetailsState {}

class ErrorRemove extends DetailsState {}

class DetailsCubit extends Cubit<DetailsState> {
  final UserRepository userRepository;

  DetailsCubit({required this.userRepository}) : super(DetailsState());

  void saveUser({required UserModel user}) async {
    var response = await userRepository.saveUser(user: user);

    response.fold(
      (onSuccess) {
        emit(SuccessSave());
      },
      (onFailure) {
        emit(ErrorSave());
      },
    );
  }

  void removeUser({required UserModel user}) async {
    var response = await userRepository.removeUser(user: user);
    response.fold(
      (onSuccess) {
        emit(SuccessRemove());
      },
      (onFailure) {
        emit(ErrorRemove());
      },
    );
  }
}
