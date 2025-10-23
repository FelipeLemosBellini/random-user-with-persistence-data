import 'package:random_user_data_persistence/features/users/data/model/coordinates_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/street_model.dart';
import 'package:random_user_data_persistence/features/users/data/model/timezone_model.dart';

class LocationModel {
  final StreetModel street;
  final String city;
  final String state;
  final String country;

  /// Postcode pode ser int ou string; normalizamos para String
  final String postcode;
  final CoordinatesModel coordinates;
  final TimezoneModel timezone;

  LocationModel({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
    street: StreetModel.fromJson(
      (json['street'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
    ),
    city: (json['city'] ?? '').toString(),
    state: (json['state'] ?? '').toString(),
    country: (json['country'] ?? '').toString(),
    postcode: (json['postcode'] ?? '').toString(),
    coordinates: CoordinatesModel.fromJson(
      (json['coordinates'] ?? const <String, dynamic>{})
          as Map<String, dynamic>,
    ),
    timezone: TimezoneModel.fromJson(
      (json['timezone'] ?? const <String, dynamic>{}) as Map<String, dynamic>,
    ),
  );
}
