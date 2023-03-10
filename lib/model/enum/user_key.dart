enum UserKey {
  nickname,
  age,
  gender,
  livePlace,
  livedPlace,
  birthPlace,
  gonePlace,
  tweet,
  introduction,
  bloodType,
  bodyType,
  height,
  hair,
  marriage,
  personality,
  sociability,
  housemate,
  alcohol,
  cigarettes,
  photoPaths,
  points,
  holiday,
  house,
  asset,
  walking,
  sickness,
  broAndSis,
  religion,
}

enum BloodType {
  a,
  b,
  o,
  ab,
  unknown,
}

extension BloodTypeLabel on BloodType {
  String toLabel() {
    switch (this) {
      case BloodType.a:
        return 'A型';
      case BloodType.b:
        return 'B型';
      case BloodType.o:
        return 'O型';
      case BloodType.ab:
        return 'AB型';
      case BloodType.unknown:
        return 'わからない';
    }
  }
}
