import 'dart:convert';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.hId,
    required this.name,
    required this.email,
  });

  String hId;
  String name;
  String email;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        hId: json["hId"],
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "hId": hId,
        "name": name,
        "email": email,
      };
}

class Profile {
  Profile(
      {required this.firstName, required this.lastName, required this.status});

  String firstName;
  String lastName;
  String status;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
      firstName: json["first_name"],
      lastName: json["last_name"],
      status: json["status"]);

  Map<String, dynamic> toJson() =>
      {"first_name": firstName, "last_name": lastName, "status": status};
}
