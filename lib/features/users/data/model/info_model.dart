class InfoModel {
  final String seed;
  final int results;
  final int page;
  final String version;

  InfoModel({
    required this.seed,
    required this.results,
    required this.page,
    required this.version,
  });

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
    seed: (json['seed'] ?? '').toString(),
    results: int.tryParse(json['results']?.toString() ?? '') ?? 0,
    page: int.tryParse(json['page']?.toString() ?? '') ?? 0,
    version: (json['version'] ?? '').toString(),
  );
}

