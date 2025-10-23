import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:random_user_data_persistence/app/router/routes.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';
import 'package:random_user_data_persistence/features/users/presentation/model/home_state.dart';
import 'package:random_user_data_persistence/features/users/presentation/view_model/home_cubit.dart';
import 'package:random_user_data_persistence/features/users/presentation/widgets/home_app_bar.dart';
import 'package:random_user_data_persistence/features/users/presentation/widgets/item_list_user_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  final HomeCubit homeCubit = GetIt.I.get<HomeCubit>();
  late final Ticker _ticker;
  Duration _lastRequest = Duration.zero;

  @override
  void initState() {
    super.initState();

    _ticker = createTicker(_onTick);
    _ticker.start();
  }

  void _onTick(Duration elapsed) {
    const interval = Duration(seconds: 5);
    if (elapsed - _lastRequest >= interval) {
      final missed = (elapsed - _lastRequest).inSeconds ~/ interval.inSeconds;
      _lastRequest += Duration(seconds: missed * interval.inSeconds);

      homeCubit.getUser();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _ticker.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: homeCubit,
      builder: (context, state) {
        List<UserModel> listUser = state.listUsers.reversed.toList();
        return Scaffold(
          appBar: HomeAppBar(
            onTapDatabase: () {
              context.push(Routes.persistedUsers);
            },
          ),
          body: ListView.separated(
            itemCount: listUser.length,
            itemBuilder: (context, index) {
              UserModel userModel = listUser.elementAt(index);
              return GestureDetector(
                onTap: () {
                  context.push(Routes.details, extra: {'userModel': userModel});
                },
                child: ItemListUserWidget(user: userModel),
              );
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              );
            },
          ),
        );
      },
    );
  }
}
