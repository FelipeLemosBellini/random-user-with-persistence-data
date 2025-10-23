class CoordinatesModel {
  final double? latitude;
  final double? longitude;

  CoordinatesModel({
    required this.latitude,
    required this.longitude,
  });

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) => CoordinatesModel(
    latitude: json['latitude'] == null ? null : double.tryParse(json['latitude'].toString()),
    longitude: json['longitude'] == null ? null : double.tryParse(json['longitude'].toString()),
  );
}