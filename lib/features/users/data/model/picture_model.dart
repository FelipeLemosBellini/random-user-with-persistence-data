class PictureModel {
  final String large;
  final String medium;
  final String thumbnail;

  PictureModel({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory PictureModel.fromJson(Map<String, dynamic> json) => PictureModel(
    large: (json['large'] ?? '').toString(),
    medium: (json['medium'] ?? '').toString(),
    thumbnail: (json['thumbnail'] ?? '').toString(),
  );
}