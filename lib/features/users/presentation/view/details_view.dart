import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:random_user_data_persistence/core/ui/widgets/app_bar/simple_app_bar.dart';
import 'package:random_user_data_persistence/core/ui/widgets/buttons/primary_button_widget.dart';
import 'package:random_user_data_persistence/core/ui/widgets/custom_snack_bar.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';
import 'package:random_user_data_persistence/features/users/presentation/event_bus/user_event_bus.dart';
import 'package:random_user_data_persistence/features/users/presentation/model/details_state.dart';
import 'package:random_user_data_persistence/features/users/presentation/view_model/details_cubit.dart';
import 'package:random_user_data_persistence/features/users/presentation/widgets/subtitle_details_widget.dart';

class DetailsView extends StatefulWidget {
  final UserModel userModel;
  final bool canSave;

  const DetailsView({
    super.key,
    required this.userModel,
    required this.canSave,
  });

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  final DetailsCubit detailsCubit = GetIt.I.get<DetailsCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<DetailsCubit, DetailsState>(
      bloc: detailsCubit,
      listener: (prev, curr) {
        if (curr is ErrorRemove) {
          CustomSnackBar.openSnackBar(
            context: context,
            message: "Erro ao remover usuário",
          );
        } else if (curr is ErrorSave) {
          CustomSnackBar.openSnackBar(
            context: context,
            message: "Erro ao salvar usuário",
          );
        } else if (curr is SuccessRemove) {
          CustomSnackBar.openSnackBar(
            context: context,
            message: "Usuário removido com sucesso",
          );
          eventBus.fire(UserEventBus());
          context.pop();
        } else if (curr is SuccessSave) {
          CustomSnackBar.openSnackBar(
            context: context,
            message: "Usuário salvo com sucesso",
          );
          context.pop();
        }
      },
      child: BlocBuilder<DetailsCubit, DetailsState>(
        bloc: detailsCubit,
        builder: (context, state) {
          return Scaffold(
            appBar: SimpleAppBar(title: "Detalhes"),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                SubtitleDetailsWidget(text: "Gênero"),
                Text(widget.userModel.gender),
                SubtitleDetailsWidget(text: "Nome"),
                Text(widget.userModel.gender),
                SubtitleDetailsWidget(text: "Endereço"),
                Text(
                  "Endereço: ${widget.userModel.location.street.name} - ${widget.userModel.location.street.number}",
                ),
                Text("Cidade: ${widget.userModel.location.city}"),
                Text("País: ${widget.userModel.location.country}"),
                Text("Código postal: ${widget.userModel.location.postcode}"),
                SubtitleDetailsWidget(text: "Coordenadas"),
                Text(
                  "Latitude: ${widget.userModel.location.coordinates.latitude}",
                ),
                Text(
                  "Longitude: ${widget.userModel.location.coordinates.longitude}",
                ),
                Text("UTC${widget.userModel.location.timezone.offset}"),
                Text(
                  "Descrição: ${widget.userModel.location.timezone.description}",
                ),
                SubtitleDetailsWidget(text: "Email"),
                Text(widget.userModel.email),
                SubtitleDetailsWidget(text: "Login"),
                Text("UUID: ${widget.userModel.login.uuid}"),
                Text("Username :${widget.userModel.login.username}"),
                Text("Senha :${widget.userModel.login.password}"),

                SubtitleDetailsWidget(text: "Dados criptografados"),
                Text("salt: ${widget.userModel.login.salt}"),
                Text("md5: ${widget.userModel.login.md5}"),
                Text("sha1: ${widget.userModel.login.sha1}"),
                Text("sha256: ${widget.userModel.login.sha256}"),
                SubtitleDetailsWidget(text: "Data de Aniversário"),
                Text("Data: ${widget.userModel.dob.date}"),
                Text("Idade: ${widget.userModel.dob.age}"),
                SubtitleDetailsWidget(text: "Contato"),
                Text("Telefone: ${widget.userModel.phone}"),
                Text("Contato: ${widget.userModel.cell}"),

                SubtitleDetailsWidget(text: "ID"),
                Text("Nome: ${widget.userModel.id.name ?? ""}"),
                Text("Valor: ${widget.userModel.id.value ?? ""}"),
                SubtitleDetailsWidget(text: "Fotos"),
                Text("Grande"),
                Image.network(
                  widget.userModel.picture.large,
                  width: 75,
                  height: 75,
                  alignment: Alignment.centerLeft,
                ),
                Text("Média"),
                Image.network(
                  widget.userModel.picture.medium,
                  alignment: Alignment.centerLeft,
                  width: 75,
                  height: 75,
                ),
                Text("Thumbnail"),
                Image.network(
                  widget.userModel.picture.thumbnail,
                  alignment: Alignment.centerLeft,
                  width: 75,
                  height: 75,
                ),
                SubtitleDetailsWidget(text: "Nacionalidade"),
                Text(widget.userModel.nat),
                SizedBox(height: 24),
              ],
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
                top: 16,
                bottom: MediaQuery.paddingOf(context).bottom + 16,
              ),
              child: PrimaryButtonWidget(
                onTap: () {
                  widget.canSave
                      ? detailsCubit.saveUser(user: widget.userModel)
                      : detailsCubit.removeUser(user: widget.userModel);
                },
                statusButton: widget.canSave
                    ? StatusButton.success
                    : StatusButton.error,
                label: widget.canSave ? "Salvar" : "Remover",
              ),
            ),
          );
        },
      ),
    );
  }
}
