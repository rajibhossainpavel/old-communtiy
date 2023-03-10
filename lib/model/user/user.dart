import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/enum/register_state.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/model/relative_expert/relative_expert.dart';
import 'package:oshiruco_app/model/relative_group/relative_group.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String bodyType,
    @Default(false) bool isBlock,
    @Default(<RelativeExpert>[]) List<RelativeExpert> relativeExpert,
    @Default('') String livedPlace,
    @Default('') String voicePaths,
    @Default('') String moviePaths,
    @Default('') String supporterCode,
    @Default('') String sickness,
    @Default('') String userID,
    @Default('') String uuid,
    @Default('') String housemate,
    @Default(0) int liked,
    @Default(0) int points,
    @Default('') String wantMarried,
    @Default('') String children,
    @Default('') String howtoMeet,
    @Default('') String logged,
    @Default('') String prevLogged,
    @Default('') String datingState,
    @Default('') String model,
    @Default('') String grandchild,
    @Default(0) int height,
    @Default(0) int likes,
    @Default('') String alcohol,
    @Default('') String supporterName,
    @Default(<RelativeGroup>[]) List<RelativeGroup> relativeGroup,
    @Default('') String gonePlace,
    @Default('') String appVer,
    @Default('') String created,
    @Default(false) bool isSelfHistory,
    @Default(false) bool isLiked,
    @Default(false) bool isFromLiked,
    @Default(false) bool isMatching,
    @Default('') String networkState,
    @Default('') String livePlace,
    @Default('') String onlineSettings,
    @Default('') String cigarettes,
    @Default('') String updated,
    @Default(0) int activeness,
    @Default('') String photoPaths,
    @Default(false) bool isFavorite,
    @Default('') String birthday,
    @Default('') String gender,
    @Default('') String dateCost,
    @Default('') String bloodType,
    @Default('') String locale,
    @Default('') String house,
    @Default('') String holiday,
    @Default('') String osVer,
    @Default('') String birthPlace,
    @Default('') String hair,
    @Default('') String personality,
    @Default('') String walking,
    @Default('') String marriage,
    @Default('') String nickname,
    @Default('') String introduction,
    @Default('') String historySettings,
    @Default('') String registState,
    @Default('') String address,
    @Default('') String os,
    @Default('') String tweet,
    @Default('') String deviceID,
    @Default('') String religion,
    @Default('') String sociability,
    @Default('') String carrier,
    @Default('') String broAndSis,
    @Default('') String houseKeeping,
    @Default('') String asset,
    @Default(0) int age,
    @Default('') String account,
    @Default('') String onlineState,
  }) = _User;
  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.mock() => const User(
        bodyType: '',
        isBlock: false,
        relativeExpert: [],
        livedPlace: '',
        voicePaths: '',
        moviePaths: '',
        supporterCode: '',
        sickness: '',
        userID: '',
        uuid: '',
        housemate: '',
        liked: 30,
        points: 50,
        wantMarried: '',
        children: '',
        howtoMeet: '',
        logged: '',
        prevLogged: '',
        datingState: '',
        model: '',
        grandchild: '',
        height: 170,
        likes: 50,
        alcohol: '',
        supporterName: '',
        relativeGroup: [],
        gonePlace: '',
        appVer: '',
        created: '',
        isSelfHistory: true,
        isLiked: true,
        isFromLiked: true,
        isMatching: true,
        networkState: '',
        livePlace: '',
        onlineSettings: '',
        cigarettes: '',
        updated: '',
        activeness: 10,
        photoPaths: '',
        isFavorite: true,
        birthday: '',
        gender: '',
        dateCost: '',
        bloodType: '',
        locale: '',
        house: '',
        holiday: '',
        osVer: '',
        birthPlace: '',
        hair: '',
        personality: '',
        walking: '',
        marriage: '',
        nickname: 'たろう',
        introduction: '',
        historySettings: '',
        registState: '',
        address: '',
        os: '',
        tweet: '',
        deviceID: '',
        religion: '',
        sociability: '',
        carrier: '',
        broAndSis: '',
        houseKeeping: '',
        asset: '',
        age: 55,
        account: '',
        onlineState: '',
      );

  UserStatus get status {
    if (datingState == UserStatus.oshiruco.toDatingState()) {
      return UserStatus.oshiruco;
    }
    if (datingState == UserStatus.omochi.toDatingState()) {
      return UserStatus.omochi;
    }
    if (datingState == UserStatus.premium.toDatingState() ||
        datingState == 'supporter') {
      return UserStatus.premium;
    }
    return UserStatus.osato;
  }

  bool get enableVisitHistory => historySettings != 'off';
  bool get isRejected =>
      RegisterStateExtension.fromString(registState) == RegisterState.rejected;
}
