// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVM _$UserVMFromJson(Map<String, dynamic> json) => UserVM(
      email: json['email'] as String,
      hasPaymentData: json['hasPaymentData'] as bool? ?? false,
      isLogIn: json['isLogIn'] as bool? ?? false,
      itemTokens: (json['itemTokens'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      firstName: json['firstName'] as String?,
      name: json['name'] as String?,
      profileImage: json['profileImage'] as String?,
      uID: json['uID'] as String,
    );

Map<String, dynamic> _$UserVMToJson(UserVM instance) => <String, dynamic>{
      'email': instance.email,
      'hasPaymentData': instance.hasPaymentData,
      'isLogIn': instance.isLogIn,
      'firstName': instance.firstName,
      'name': instance.name,
      'uID': instance.uID,
      'profileImage': instance.profileImage,
      'itemTokens': instance.itemTokens,
    };
