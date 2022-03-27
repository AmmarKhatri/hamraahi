class RegisterRequestModel {
  String? email;
  String? password;
  String? username;
  String? age;
  String? gender;
  String? number;

  RegisterRequestModel(
      {this.email,
      this.password,
      this.username,
      this.number,
      this.age,
      this.gender});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['password'] = password;
    data['number'] = number;
    data['age'] = age;
    data['gender'] = gender;
    return data;
  }
}
