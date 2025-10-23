class CoordinatesModel {
  final String latitude;
  final String longitude;

  CoordinatesModel({required this.latitude, required this.longitude});

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      CoordinatesModel(
        latitude: json['latitude'],
        longitude: json['longitude'],
      );
}
