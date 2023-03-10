import 'package:freezed_annotation/freezed_annotation.dart';

part 'dating_chat_member.freezed.dart';
part 'dating_chat_member.g.dart';

@freezed
class DatingChatMember with _$DatingChatMember {
  const factory DatingChatMember({
    @Default(false) bool readState,
    @Default(false) bool responseState,
    required String userName,
    required String uuid,
  }) = _DatingChatMember;

  factory DatingChatMember.fromJson(Map<String, dynamic> json) =>
      _$DatingChatMemberFromJson(json);
}
