class TimezoneModel {
  final String offset;
  final String description;

  TimezoneModel({
    required this.offset,
    required this.description,
  });

  factory TimezoneModel.fromJson(Map<String, dynamic> json) => TimezoneModel(
    offset: (json['offset'] ?? '').toString(),
    description: (json['description'] ?? '').toString(),
  );
}