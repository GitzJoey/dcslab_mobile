class UserModel {
  final String hId;
  final String name;
  final String email;

  UserModel({
    required this.hId,
    required this.name,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    var data = json['data'];

    return UserModel(
        hId: data['hId'], name: data['name'], email: data['email']);
  }
}
