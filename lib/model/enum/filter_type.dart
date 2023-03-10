enum FilterType {
  gender,
  age,
  livePlace,
  hasPhoto,
  birthPlace,
}

enum AgeRange {
  zeroFive,
  sixTen,
  elevenFifteen,
  sixteenTwenty,
  twentyOneTwentyFive,
  twentySixThirty,
  thirtyOneThirtyFive,
  thirtySixForty,
  fortyOneFortyFive,
  fortySixFifty,
  fiftyOne,
}

AgeRange ageRangeFromString(String value) {
  return AgeRange.values.firstWhere((v) => _ageRangeToString(v) == value);
}

String _ageRangeToString(AgeRange ageRange) {
  switch (ageRange) {
    case AgeRange.zeroFive:
      return '0~5歳';
    case AgeRange.sixTen:
      return '6~10歳';
    case AgeRange.elevenFifteen:
      return '11~15歳';
    case AgeRange.sixteenTwenty:
      return '16~20歳';
    case AgeRange.twentyOneTwentyFive:
      return '21~25歳';
    case AgeRange.twentySixThirty:
      return '26~30歳';
    case AgeRange.thirtyOneThirtyFive:
      return '31~35歳';
    case AgeRange.thirtySixForty:
      return '36~40歳';
    case AgeRange.fortyOneFortyFive:
      return '41~45歳';
    case AgeRange.fortySixFifty:
      return '46~50歳';
    case AgeRange.fiftyOne:
      return '51歳~';
  }
}

extension FilterTypeExtension on FilterType {
  static FilterType fromIndex(int index) {
    switch (index) {
      case 1:
        return FilterType.gender;
      case 2:
        return FilterType.age;
      case 3:
        return FilterType.livePlace;
      case 4:
        return FilterType.hasPhoto;
      case 5:
        return FilterType.birthPlace;
      default:
        throw UnsupportedError('unsupported index $index');
    }
  }

  String getName() {
    switch (this) {
      case FilterType.gender:
        return 'gender';
      case FilterType.age:
        return 'age';
      case FilterType.livePlace:
        return 'livePlace';
      case FilterType.hasPhoto:
        return 'hasPhoto';
      case FilterType.birthPlace:
        return 'birthPlace';
    }
  }

  String getTitle() {
    switch (this) {
      case FilterType.gender:
        return '性別';
      case FilterType.age:
        return 'おしるこ年齢';
      case FilterType.livePlace:
        return '居住地';
      case FilterType.hasPhoto:
        return 'プロフィール写真の有無';
      case FilterType.birthPlace:
        return '出身地';
    }
  }

  List<String> getSelection() {
    switch (this) {
      case FilterType.age:
        return AgeRange.values.map(_ageRangeToString).toList();
      case FilterType.gender:
        return ['男性', '女性', 'その他'];
      case FilterType.livePlace:
        return prefectures;
      case FilterType.hasPhoto:
        return yesNoSelection;
      case FilterType.birthPlace:
        return prefectures;
      default:
        return [];
    }
  }
}

const yesNoSelection = [
  'あり',
  'なし',
];

const prefectures = [
  '北海道',
  '青森',
  '岩手',
  '宮城',
  '秋田',
  '山形',
  '福島',
  '茨城',
  '栃木',
  '群馬',
  '埼玉',
  '千葉',
  '東京',
  '神奈川',
  '新潟',
  '富山',
  '石川',
  '福井',
  '山梨',
  '長野',
  '岐阜',
  '静岡',
  '愛知',
  '三重',
  '滋賀',
  '京都',
  '大阪',
  '兵庫',
  '奈良',
  '和歌山',
  '鳥取',
  '島根',
  '岡山',
  '広島',
  '山口',
  '徳島',
  '香川',
  '愛媛',
  '高知',
  '福岡',
  '佐賀',
  '長崎',
  '熊本',
  '大分',
  '宮崎',
  '鹿児島',
  '沖縄',
  '海外'
];
