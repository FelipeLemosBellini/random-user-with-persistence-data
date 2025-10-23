import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_user_data_persistence/features/users/data/repositories/user_repository.dart';
import 'package:random_user_data_persistence/features/users/presentation/model/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final UserRepository userRepository;

  HomeCubit({required this.userRepository}) : super(HomeState.startState());

  void getUser() async {
    final response = await userRepository.getUser();
    response.fold((user) {
      state.listUsers.add(user);
      emit(state.copyWith(listUsers: state.listUsers));
    }, (onFailure) {});
  }
}
