class UserModel {
  final String hId;
  final String name;
  final String email;
  ProfileModel profile;
  List<RolesModel> roles;
  TokenModel tokens;

  UserModel(
      {required this.hId,
      required this.name,
      required this.email,
      required this.profile,
      required this.roles,
      required this.tokens});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    var data = json['data'];
    var rolesList = data['roles'] as List<dynamic>?;

    var tokens = json['tokens'];

    return UserModel(
        hId: data['hId'],
        name: data['name'],
        email: data['email'],
        profile: ProfileModel.fromJson(data['profile']),
        roles: rolesList!.map((r) => RolesModel.fromJson(r)).toList(),
        tokens: TokenModel.fromJson(tokens));
  }
}

class ProfileModel {
  final String firstName;
  final String lastName;
  final String status;

  ProfileModel(
      {required this.firstName, required this.lastName, required this.status});

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
        firstName: json['first_name'],
        lastName: json['last_name'],
        status: json['status']);
  }
}

class RolesModel {
  final String hId;
  final String displayName;

  RolesModel({required this.hId, required this.displayName});

  factory RolesModel.fromJson(Map<String, dynamic> json) {
    return RolesModel(hId: json['hId'], displayName: json['display_name']);
  }
}

class TokenModel {
  final String accessToken;
  final String tokenType;

  TokenModel({required this.accessToken, required this.tokenType});

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
        accessToken: json['access_token'], tokenType: json['token_type']);
  }
}
