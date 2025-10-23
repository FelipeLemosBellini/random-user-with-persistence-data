import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';

class HomeState {
  List<UserModel> listUsers;

  HomeState({required this.listUsers});

  static HomeState startState() {
    return HomeState(listUsers: []);
  }

  HomeState copyWith({List<UserModel>? listUsers}) {
    return HomeState(listUsers: listUsers ?? this.listUsers);
  }
}
