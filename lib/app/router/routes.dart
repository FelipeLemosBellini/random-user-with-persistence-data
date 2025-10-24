import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:random_user_data_persistence/app/di/injections.dart';
import 'package:random_user_data_persistence/app/router/transitions.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';
import 'package:random_user_data_persistence/features/users/presentation/view/details_view.dart';
import 'package:random_user_data_persistence/features/users/presentation/view/home_view.dart';
import 'package:random_user_data_persistence/features/users/presentation/view/persisted_users_view.dart';
import 'package:random_user_data_persistence/features/users/presentation/view_model/details_cubit.dart';
import 'package:random_user_data_persistence/features/users/presentation/view_model/home_cubit.dart';
import 'package:random_user_data_persistence/features/users/presentation/view_model/persisted_users_cubit.dart';

abstract class Routes {
  static const String home = '/home';
  static const String details = '/details';
  static const String persistedUsers = '/persistedUsers';
}

GoRouter router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      pageBuilder: (context, state) => Transitions.customTransitionPage(
        BlocProvider(create: (_) => getIt.get<HomeCubit>(), child: HomeView()),
        state,
      ),
    ),
    GoRoute(
      path: Routes.details,
      pageBuilder: (context, state) {
        Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
        return Transitions.customTransitionPage(
          BlocProvider(
            create: (_) => getIt.get<DetailsCubit>(),
            child: DetailsView(userModel: extra['userModel'],canSave: extra['canSave'],),
          ),
          state,
        );
      },
    ),
    GoRoute(
      path: Routes.persistedUsers,
      pageBuilder: (context, state) => Transitions.customTransitionPage(
        BlocProvider(
          create: (_) => getIt.get<PersistedUsersCubit>(),
          child: PersistedUsersView(),
        ),
        state,
      ),
    ),
  ],
);
