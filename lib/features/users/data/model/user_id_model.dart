class UserIdModel {
  final String name;
  final String value;

  UserIdModel({required this.name, required this.value});

  factory UserIdModel.fromJson(Map<String, dynamic> json) => UserIdModel(
    name: json['name'].toString(),
    value: json['value'].toString(),
  );
}
