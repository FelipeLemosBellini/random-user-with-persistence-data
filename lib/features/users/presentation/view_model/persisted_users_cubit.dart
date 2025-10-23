import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_user_data_persistence/features/users/presentation/model/persisted_users_state.dart';

class PersistedUsersCubit extends Cubit<PersistedUsersState> {
  PersistedUsersCubit() : super(PersistedUsersState());
}
