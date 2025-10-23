class LoginModel {
  final String uuid;
  final String username;
  final String password;
  final String salt;
  final String md5;
  final String sha1;
  final String sha256;

  LoginModel({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    uuid: (json['uuid'] ?? '').toString(),
    username: (json['username'] ?? '').toString(),
    password: (json['password'] ?? '').toString(),
    salt: (json['salt'] ?? '').toString(),
    md5: (json['md5'] ?? '').toString(),
    sha1: (json['sha1'] ?? '').toString(),
    sha256: (json['sha256'] ?? '').toString(),
  );
}
