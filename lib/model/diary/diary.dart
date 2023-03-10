import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/model/diary_user/diary_user.dart';

part 'diary.freezed.dart';
part 'diary.g.dart';

@freezed
class Diary with _$Diary {
  const factory Diary({
    @Default(0) int comments,
    @Default('') String id,
    @Default('') String type,
    @Default('') String text,
    @Default('') String media,
    @Default(0) int smile,
    @Default(false) bool isSmiled,
    @Default(false) bool matched,
    @Default('') String time,
    @Default(0) int unread,
    DiaryUser? user,
  }) = _Diary;

  const Diary._();

  factory Diary.fromJson(Map<String, dynamic> json) => _$DiaryFromJson(json);

  String get photoUrl {
    if (type != 'photo' || media.isEmpty) {
      return '';
    }

    return 'user/$media'.toImageUrl();
  }

  String get thumbNailUrl {
    if (type == 'photo') {
      final fileUrl = 'user-resize/$media?w=300'.toImageUrl();
      return fileUrl;
    }

    if (type == 'movie') {
      final path = 'user-resize/$media';
      return '${path.substring(0, path.length - 4)}-00001.png?w=450&v=on'
          .toImageUrl();
    }

    return '';
  }
}
