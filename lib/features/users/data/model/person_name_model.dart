class PersonNameModel {
  final String title;
  final String first;
  final String last;

  PersonNameModel({
    required this.title,
    required this.first,
    required this.last,
  });

  factory PersonNameModel.fromJson(Map<String, dynamic> json) => PersonNameModel(
    title: (json['title'] ?? '').toString(),
    first: (json['first'] ?? '').toString(),
    last: (json['last'] ?? '').toString(),
  );
}
