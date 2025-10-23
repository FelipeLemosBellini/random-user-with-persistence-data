import 'dart:convert';

import 'package:random_user_data_persistence/features/users/data/model/info_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_model.dart';

class RandomUserResponseModel {
  final List<UserModel> results;
  final InfoModel info;

  RandomUserResponseModel({required this.results, required this.info});

  factory RandomUserResponseModel.fromJson(Map<String, dynamic> json) {
    final list = (json['results'] as List? ?? [])
        .map(
          (e) => UserModel.fromJson(
            (e ?? const <String, dynamic>{}) as Map<String, dynamic>,
          ),
        )
        .toList();

    return RandomUserResponseModel(
      results: list,
      info: InfoModel.fromJson(
        (json['info'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
      ),
    );
  }
}
