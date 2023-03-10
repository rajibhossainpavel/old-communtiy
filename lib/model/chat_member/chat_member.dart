import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_member.freezed.dart';
part 'chat_member.g.dart';

@freezed
class ChatMember with _$ChatMember {
  const factory ChatMember({
    @Default(false) bool readState,
    @Default(false) bool responseState,
    @Default('') String userName,
    @Default('') String uuid,
  }) = _ChatMember;
  const ChatMember._();

  factory ChatMember.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberFromJson(json);
}
