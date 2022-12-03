class UserModel {
  String? name;
  String? email;
  String? authToken;

  UserModel({
    this.name,
    this.email,
    this.authToken,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];

    authToken = json['authToken'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'authToken': authToken,
    };
  }
}
