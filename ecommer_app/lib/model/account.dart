class Account {
  String? id;
  String? username;
  String? email;
  String? photo;
  String? avatar;
  String? password;

  Account(
      {this.id,
      this.username,
      this.email,
      this.photo,
      this.avatar,
      this.password});

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    photo = json['photo'];
    avatar = json['avatar'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['photo'] = this.photo;
    data['avatar'] = this.avatar;
    data['password'] = this.password;
    return data;
  }
}
