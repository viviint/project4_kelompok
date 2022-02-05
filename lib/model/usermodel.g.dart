// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      user_code: json['user_code'] as int,
      email: json['email'] as String,
      displayname: json['displayname'] as String,
      ussername: json['ussername'] as String,
      phonenumb: json['phonenumb'] as int,
      birthdate: json['birthdate'] as int,
      image: json['image'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user_code': instance.user_code,
      'email': instance.email,
      'displayname': instance.displayname,
      'ussername': instance.ussername,
      'phonenumb': instance.phonenumb,
      'birthdate': instance.birthdate,
      'image': instance.image,
    };
