enum DiaryType {
  recent,
  photo,
  movie,
  voice,
  text,
}

extension DiaryTypeApiRequest on DiaryType {
  String toApiRequest() {
    switch (this) {
      case DiaryType.recent:
        return 'recent';
      case DiaryType.photo:
        return 'photo';
      case DiaryType.movie:
        return 'movie';
      case DiaryType.text:
        return 'text';
      case DiaryType.voice:
        return 'voice';
    }
  }

  String toEventName() {
    switch (this) {
      case DiaryType.photo:
        return 'diary_post_photo';
      case DiaryType.movie:
        return 'diary_post_movie';
      case DiaryType.text:
        return 'diary_post_text';
      case DiaryType.voice:
        return 'diary_post_voice';
      case DiaryType.recent:
        throw StateError(toString());
    }
  }

  static DiaryType fromString(String s) {
    switch (s) {
      case 'recent':
        return DiaryType.recent;
      case 'photo':
        return DiaryType.photo;
      case 'movie':
        return DiaryType.movie;
      case 'text':
        return DiaryType.text;
      default:
        throw UnsupportedError('Unsupported DiaryType Type $s');
    }
  }
}

String enumToString(Object o) => o.toString().split('.').last;
