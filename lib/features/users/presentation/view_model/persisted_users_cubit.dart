import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_user_data_persistence/features/users/data/repositories/user_repository.dart';
import 'package:random_user_data_persistence/features/users/presentation/model/persisted_users_state.dart';

class PersistedUsersCubit extends Cubit<PersistedUsersState> {
  final UserRepository userRepository;

  PersistedUsersCubit({required this.userRepository})
    : super(PersistedUsersState.startState());

  void getListUsers() async {
    var response = await userRepository.getLocalListUsers();

    response.fold((list) {
      emit(state.copyWith(listUsers: list));
    }, (onFailure) {});
  }
}
