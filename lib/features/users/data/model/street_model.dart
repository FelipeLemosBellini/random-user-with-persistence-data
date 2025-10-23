class StreetModel {
  final int number;
  final String name;

  StreetModel({required this.number, required this.name});

  factory StreetModel.fromJson(Map<String, dynamic> json) => StreetModel(
    number: json['number'] is int
        ? json['number'] as int
        : int.tryParse(json['number']?.toString() ?? '') ?? 0,
    name: (json['name'] ?? '').toString(),
  );
}
