import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_user_data_persistence/features/users/presentation/model/details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsState());
}
