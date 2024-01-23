import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class UserVM {
  final String email;
  final bool hasPaymentData;
  final bool isLogIn;
  final String? firstName;
  final String? name;
  final String uID;
  final String? profileImage;
  final List<String>? itemTokens;
  const UserVM({
    required this.email,
    this.hasPaymentData = false,
    this.isLogIn = false,
    this.itemTokens,
    this.firstName,
    this.name,
    this.profileImage,
    required this.uID,
  });

  factory UserVM.fromJson(Map<String, dynamic> json) => _$UserVMFromJson(json);
  Map<String, dynamic> toJson() => _$UserVMToJson(this);
}
