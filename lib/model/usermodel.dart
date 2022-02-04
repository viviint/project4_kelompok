import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'usermodel.g.dart';

@JsonSerializable()
class UserModel {
  int user_code;
  String email;
  String displayname;
  String ussername;
  int phonenumb;
  int birthdate;
  String image;

  UserModel(
      {required this.user_code,
      required this.email,
      required this.displayname,
      required this.ussername,
      required this.phonenumb,
      required this.birthdate,
      required this.image});

  UserModel copyWith({
    int? user_code,
    String? email,
    String? displayname,
    String? ussername,
    int? phonenumb,
    int? birthdate,
    String? image,
  }) {
    return UserModel(
      user_code: user_code ?? this.user_code,
      email: email ?? this.email,
      displayname: displayname ?? this.displayname,
      ussername: ussername ?? this.ussername,
      phonenumb: phonenumb ?? this.phonenumb,
      birthdate: birthdate ?? this.birthdate,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  String toString() {
    return 'UserModel(user_code: $user_code, email: $email, displayname: $displayname, ussername: $ussername, phonenumb: $phonenumb, birthdate: $birthdate, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.user_code == user_code &&
        other.email == email &&
        other.displayname == displayname &&
        other.ussername == ussername &&
        other.phonenumb == phonenumb &&
        other.birthdate == birthdate &&
        other.image == image;
  }

  @override
  int get hashCode {
    return user_code.hashCode ^
        email.hashCode ^
        displayname.hashCode ^
        ussername.hashCode ^
        phonenumb.hashCode ^
        birthdate.hashCode ^
        image.hashCode;
  }

  static List<UserModel> usermodel = [
    UserModel(
        user_code: 1,
        email: 'your@gmail.com',
        displayname: 'yourname',
        ussername: 'yourusnm',
        phonenumb: 081234567811,
        birthdate: 11 - 1 - 2005,
        image: 'assets/todo.jpg')
  ];
}
