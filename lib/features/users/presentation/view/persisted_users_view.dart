import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:random_user_data_persistence/app/router/routes.dart';
import 'package:random_user_data_persistence/core/ui/widgets/app_bar/simple_app_bar.dart';
import 'package:random_user_data_persistence/core/ui/widgets/custom_snack_bar.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';
import 'package:random_user_data_persistence/features/users/presentation/event_bus/user_event_bus.dart';
import 'package:random_user_data_persistence/features/users/presentation/model/persisted_users_state.dart';
import 'package:random_user_data_persistence/features/users/presentation/view_model/persisted_users_cubit.dart';
import 'package:random_user_data_persistence/features/users/presentation/widgets/item_list_user_widget.dart';

class PersistedUsersView extends StatefulWidget {
  const PersistedUsersView({super.key});

  @override
  State<PersistedUsersView> createState() => _PersistedUsersViewState();
}

class _PersistedUsersViewState extends State<PersistedUsersView> {
  final PersistedUsersCubit persistedUsersCubit = GetIt.I
      .get<PersistedUsersCubit>();

  @override
  void initState() {
    super.initState();
    persistedUsersCubit.getListUsers();

    eventBus.on<UserEventBus>().listen((event) {
      persistedUsersCubit.getListUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PersistedUsersCubit, PersistedUsersState>(
      bloc: persistedUsersCubit,
      listener: (prev, curr) {
        if (curr is ErrorListUsers) {
          CustomSnackBar.openSnackBar(
            context: context,
            message: "Erro ao listar os usuários",
          );
        }
      },
      child: BlocBuilder<PersistedUsersCubit, PersistedUsersState>(
        bloc: persistedUsersCubit,
        builder: (context, state) {
          List<UserModel> listUser = state.listUsers.reversed.toList();
          return Scaffold(
            appBar: SimpleAppBar(title: "Usuários armazenados"),
            body: Visibility(
              visible: listUser.isNotEmpty,
              replacement: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Não há nenhum usuário salvo.",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
              child: ListView.separated(
                itemCount: listUser.length,
                itemBuilder: (context, index) {
                  UserModel userModel = listUser.elementAt(index);
                  return GestureDetector(
                    onTap: () {
                      context.push(
                        Routes.details,
                        extra: {'userModel': userModel, 'canSave': false},
                      );
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
            ),
          );
        },
      ),
    );
  }
}
