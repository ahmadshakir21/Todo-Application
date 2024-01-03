class UserModel {
  String? username;
  String? password;
  String? imageUrl;
  bool? isPasswordActive;

  UserModel({this.username, this.password, this.imageUrl, this.isPasswordActive});

  Map<String, dynamic> toMap() {
    return {'username': username, 'password': password, 'imageUrl': imageUrl, 'isPasswordActive': isPasswordActive == true ? 1 : 0};
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(username: map['username'], password: map['password'], imageUrl: map['imageUrl'], isPasswordActive: map['isPasswordActive'] == 1);
  }
}
