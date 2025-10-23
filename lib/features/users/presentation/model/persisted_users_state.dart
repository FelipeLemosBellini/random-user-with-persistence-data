import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';

class PersistedUsersState {
  final List<UserModel> listUsers;

  PersistedUsersState({required this.listUsers});

  static PersistedUsersState startState() {
    return PersistedUsersState(listUsers: []);
  }

  PersistedUsersState copyWith({List<UserModel>? listUsers}) {
    return PersistedUsersState(listUsers: listUsers ?? this.listUsers);
  }
}
