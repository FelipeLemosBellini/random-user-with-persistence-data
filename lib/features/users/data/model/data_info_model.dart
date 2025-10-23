class DateInfoModel {
  final DateTime? date;
  final int age;

  DateInfoModel({
    required this.date,
    required this.age,
  });

  factory DateInfoModel.fromJson(Map<String, dynamic> json) => DateInfoModel(
    date: DateTime.tryParse(json['date']?.toString() ?? ''),
    age: int.tryParse(json['age']?.toString() ?? '') ?? 0,
  );
}