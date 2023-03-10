enum Prefecture {
  hokkaido,
  aomori,
  iwate,
  miyagi,
  akita,
  yamagata,
  fukushima,
  ibaraki,
  tochigi,
  gunma,
  saitama,
  chiba,
  tokyo,
  kanagawa,
  niigata,
  toyama,
  ishikawa,
  fukui,
  yamanashi,
  nagano,
  gifu,
  shizuoka,
  aichi,
  mie,
  shiga,
  kyoto,
  osaka,
  hyogo,
  nara,
  wakayama,
  tottori,
  shimane,
  okayama,
  hiroshima,
  yamaguchi,
  tokushima,
  kagawa,
  ehime,
  kochi,
  fukuoka,
  saga,
  nagasaki,
  kumamoto,
  oita,
  miyazaki,
  kagoshima,
  okinawa,
}

extension PrefectureLabel on Prefecture {
  String toLabel() {
    switch (this) {
      case Prefecture.hokkaido:
        return '北海道';
      case Prefecture.aomori:
        return '青森';
      case Prefecture.iwate:
        return '岩手';
      case Prefecture.miyagi:
        return '宮城';
      case Prefecture.akita:
        return '秋田';
      case Prefecture.yamagata:
        return '山形';
      case Prefecture.fukushima:
        return '福島';
      case Prefecture.ibaraki:
        return '茨城';
      case Prefecture.tochigi:
        return '栃木';
      case Prefecture.gunma:
        return '群馬';
      case Prefecture.saitama:
        return '埼玉';
      case Prefecture.chiba:
        return '千葉';
      case Prefecture.tokyo:
        return '東京';
      case Prefecture.kanagawa:
        return '神奈川';
      case Prefecture.niigata:
        return '新潟';
      case Prefecture.toyama:
        return '富山';
      case Prefecture.ishikawa:
        return '石川';
      case Prefecture.fukui:
        return '福井';
      case Prefecture.yamanashi:
        return '山梨';
      case Prefecture.nagano:
        return '長野';
      case Prefecture.gifu:
        return '岐阜';
      case Prefecture.shizuoka:
        return '静岡';
      case Prefecture.aichi:
        return '愛知';
      case Prefecture.mie:
        return '三重';
      case Prefecture.shiga:
        return '滋賀';
      case Prefecture.kyoto:
        return '京都';
      case Prefecture.osaka:
        return '大阪';
      case Prefecture.hyogo:
        return '兵庫';
      case Prefecture.nara:
        return '奈良';
      case Prefecture.wakayama:
        return '和歌山';
      case Prefecture.tottori:
        return '鳥取';
      case Prefecture.shimane:
        return '島根';
      case Prefecture.okayama:
        return '岡山';
      case Prefecture.hiroshima:
        return '広島';
      case Prefecture.yamaguchi:
        return '山口';
      case Prefecture.tokushima:
        return '徳島';
      case Prefecture.kagawa:
        return '香川';
      case Prefecture.ehime:
        return '愛媛';
      case Prefecture.kochi:
        return '高知';
      case Prefecture.fukuoka:
        return '福岡';
      case Prefecture.saga:
        return '佐賀';
      case Prefecture.nagasaki:
        return '長崎';
      case Prefecture.kumamoto:
        return '熊本';
      case Prefecture.oita:
        return '大分';
      case Prefecture.miyazaki:
        return '宮崎';
      case Prefecture.kagoshima:
        return '鹿児島';
      case Prefecture.okinawa:
        return '沖縄';
    }
  }
}
