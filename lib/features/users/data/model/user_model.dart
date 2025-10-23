import 'package:random_user_data_persistence/features/users/data/model/coordinates_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/data_info_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/location_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/login_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/person_name_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/picture_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/street_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/timezone_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/user_id_model.dart';

class UserModel {
  final String gender;
  final PersonNameModel name;
  final LocationModel location;
  final String email;
  final LoginModel login;
  final DateInfoModel dob;
  final DateInfoModel registered;
  final String phone;
  final String cell;
  final UserIdModel id;
  final PictureModel picture;
  final String nat;

  UserModel({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    gender: (json['gender'] ?? '').toString(),
    name: PersonNameModel.fromJson(
      (json['name'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
    ),
    location: LocationModel.fromJson(
      (json['location'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
    ),
    email: (json['email'] ?? '').toString(),
    login: LoginModel.fromJson(
      (json['login'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
    ),
    dob: DateInfoModel.fromJson(
      (json['dob'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
    ),
    registered: DateInfoModel.fromJson(
      (json['registered'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
    ),
    phone: (json['phone'] ?? '').toString(),
    cell: (json['cell'] ?? '').toString(),
    id: UserIdModel.fromJson(
      (json['id'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
    ),
    picture: PictureModel.fromJson(
      (json['picture'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
    ),
    nat: (json['nat'] ?? '').toString(),
  );
}
