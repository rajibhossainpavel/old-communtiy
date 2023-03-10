import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/analytics.dart';
import 'package:oshiruco_app/application/url.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/model/enum/certificate.dart';
import 'package:oshiruco_app/restore_ios_account.dart';
import 'package:oshiruco_app/widget/root.dart';
import 'package:oshiruco_app/widget/screen/basic_information_screen.dart';
import 'package:oshiruco_app/widget/screen/block_screen.dart';
import 'package:oshiruco_app/widget/screen/communication_chat_screen.dart';
import 'package:oshiruco_app/widget/screen/complete_register_screen.dart';
import 'package:oshiruco_app/widget/screen/concierge_screen.dart';
import 'package:oshiruco_app/widget/screen/diary/create_diary_screen.dart';
import 'package:oshiruco_app/widget/screen/diary/diary_comment_screen.dart';
import 'package:oshiruco_app/widget/screen/diary/user_diaries_screen.dart';
import 'package:oshiruco_app/widget/screen/edit_my_page_screen.dart';
import 'package:oshiruco_app/widget/screen/edit_self_history_screen.dart';
import 'package:oshiruco_app/widget/screen/favorite_screen.dart';
import 'package:oshiruco_app/widget/screen/filtering_screen.dart';
import 'package:oshiruco_app/widget/screen/friend_detail_screen.dart';
import 'package:oshiruco_app/widget/screen/greeting_screen.dart';
import 'package:oshiruco_app/widget/screen/group_category_screen.dart';
import 'package:oshiruco_app/widget/screen/group_chat_screen.dart';
import 'package:oshiruco_app/widget/screen/group_create_screen.dart';
import 'package:oshiruco_app/widget/screen/group_detail_owner_screen.dart';
import 'package:oshiruco_app/widget/screen/group_detail_screen.dart';
import 'package:oshiruco_app/widget/screen/group_edit_screen.dart';
import 'package:oshiruco_app/widget/screen/home_screen.dart';
import 'package:oshiruco_app/widget/screen/info_screen.dart';
import 'package:oshiruco_app/widget/screen/my_page_screen.dart';
import 'package:oshiruco_app/widget/screen/point_history_screen.dart';
import 'package:oshiruco_app/widget/screen/point_screen.dart';
import 'package:oshiruco_app/widget/screen/preview_my_page.dart';
import 'package:oshiruco_app/widget/screen/profile_ensure_screen.dart';
import 'package:oshiruco_app/widget/screen/restart_screen.dart';
import 'package:oshiruco_app/widget/screen/select_certificate_screen.dart';
import 'package:oshiruco_app/widget/screen/self_history/caption_editing_screen.dart';
import 'package:oshiruco_app/widget/screen/self_history/self_history_preview_screen.dart';
import 'package:oshiruco_app/widget/screen/self_history_screen.dart';
import 'package:oshiruco_app/widget/screen/terms_screen.dart';
import 'package:oshiruco_app/widget/screen/upload_certificate_screen.dart';
import 'package:oshiruco_app/widget/screen/user_status_screen.dart';
import 'package:oshiruco_app/widget/screen/visit_history_screen.dart';
import 'package:oshiruco_app/widget/screen/visit_history_setting_screen.dart';
import 'package:oshiruco_app/widget/screen/web_view_screen.dart';
import 'package:routemaster/routemaster.dart';

const navigateToHomeParamKey = 'navigate-to-home';
const restoreUserEmail = 'userEmail';

// const _flavor = String.fromEnvironment('FLAVOR');
const _flavor = 'staging';
const _domain = _flavor == "development" || _flavor == "staging"
    ? "https://stg-contents.oshiruco.com"
    : "https://contents.oshiruco.com";

final routemaster = RoutemasterDelegate(
  observers: [_OshirucoRouteObserver()],
  routesBuilder: (_) => RouteMap(
    routes: {
      '/': (route) {
        // 登録完了後はnavigate-to-homeを使用してhome画面に移行する
        final param = route.queryParameters[navigateToHomeParamKey];
        if (param == 'true') {
          return const MaterialPage<HomeScreen>(
            child: HomeScreen(),
          );
        }
        return const MaterialPage<Root>(
          child: Root(),
        );
      },
      '/term-of-use': (route) => MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              '利用規約',
              const OshirucoUrl().term,
              isWhiteMode: true,
            ),
          ),
      '/privacy-policy': (route) => MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              'プライバシーポリシー',
              const OshirucoUrl().privacy,
              isWhiteMode: true,
            ),
          ),
      '/greeting': (route) => const MaterialPage<GreetingScreen>(
            child: GreetingScreen(),
          ),
      '/restoreAccount': (route) {
        final param = route.queryParameters[restoreUserEmail];
        return MaterialPage<RestoreIosAccount>(
          child: RestoreIosAccount(
            email: param.toString(),
          ),
        );
      },
      '/profile_ensure': (route) => const MaterialPage<ProfileEnsureScreen>(
            child: ProfileEnsureScreen(),
          ),
      '/basic_information': (route) =>
          const MaterialPage<BasicInformationScreen>(
            child: BasicInformationScreen(),
          ),
      // 登録フロー変更時に移動した。念の為コメントアウトしておく
      // '/basic_information/term-of-use': (route) => MaterialPage<WebViewScreen>(
      //       child: WebViewScreen(
      //         '利用規約',
      //         const OshirucoUrl().term,
      //         isWhiteMode: true,
      //       ),
      //     ),
      // '/basic_information/privacy-policy': (route) =>
      //     MaterialPage<WebViewScreen>(
      //       child: WebViewScreen(
      //         'プライバシーポリシー',
      //         const OshirucoUrl().privacy,
      //         isWhiteMode: true,
      //       ),
      //     ),
      '/basic_information/concierge': (route) =>
          const MaterialPage<ConciergeScreen>(
            child: ConciergeScreen(
              type: MessageType.restore,
            ),
          ),
      '/basic_information/select-certificate': (route) =>
          const MaterialPage<SelectCertificateScreen>(
            child: SelectCertificateScreen(),
          ),
      '/basic_information/select-certificate/upload-certificate': (route) {
        final param =
            route.queryParameters[UploadCertificateScreen.certificationType];
        final certificate = Certificate.values
            .firstWhere((element) => element.toString() == param);
        return MaterialPage<SelectCertificateScreen>(
          child: UploadCertificateScreen(certificate),
        );
      },
      '/complete-register': (route) =>
          const MaterialPage<CompleteRegisterScreen>(
            child: CompleteRegisterScreen(),
          ),
      '/info': (route) => const MaterialPage<InfoScreen>(
            fullscreenDialog: true,
            child: InfoScreen(),
          ),

      /// START friendTab
      '/friends/filter': (route) => const MaterialPage<FilteringScreen>(
            fullscreenDialog: true,
            child: FilteringScreen(),
          ),
      '/friends/filter/membership': (route) => MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              '会員ランク詳細',
              const OshirucoUrl().membership,
            ),
          ),
      ..._pointRoutes('/friends/filter'),
      '/friends/detail/:uuid': (route) => MaterialPage<FriendDetailScreen>(
            child: FriendDetailScreen(route.pathParameters['uuid'] ?? ''),
          ),
      ..._pointRoutes('/friends/detail/:uuid'),
      '/friends/detail/:uuid/diaries': (route) =>
          MaterialPage<UserDiariesScreen>(
            child: UserDiariesScreen(route.pathParameters['uuid'] ?? ''),
          ),
      '/friends/detail/:uuid/diaries/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/friends/detail/:uuid/diary/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/friends/detail/:uuid/selfhistory': (route) =>
          MaterialPage<SelfHistoryScreen>(
            child: SelfHistoryScreen(
              route.pathParameters['uuid'] ?? '',
            ),
          ),

      /// END friendTab

      /// Start groupTab
      ..._pointRoutes('/'),
      '/membership': (route) => MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              '会員ランク詳細',
              const OshirucoUrl().membership,
            ),
          ),
      '/groups/new': (route) => const MaterialPage<GroupCreateScreen>(
            child: GroupCreateScreen(),
            fullscreenDialog: true,
          ),
      ..._pointRoutes('/groups/new'),
      '/groups/detail/:group_id': (route) {
        final isOwner =
            route.queryParameters[GroupDetailScreen.isOwnerKey] == 'true';
        return isOwner
            ? MaterialPage<GroupDetailOwnerScreen>(
                child: GroupDetailOwnerScreen(
                  groupId: route.pathParameters['group_id'] ?? '',
                ),
              )
            : MaterialPage<GroupDetailScreen>(
                child: GroupDetailScreen(
                  groupId: route.pathParameters['group_id'] ?? '',
                ),
              );
      },
      '/groups/detail/:group_id/membership': (route) =>
          MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              '会員ランク詳細',
              const OshirucoUrl().membership,
            ),
          ),
      '/groups/detail/:group_id/chat': (route) => MaterialPage<GroupChatScreen>(
            child: GroupChatScreen(
              groupId: route.pathParameters['group_id'] ?? '',
            ),
          ),
      ..._pointRoutes('/groups/detail/:group_id/chat'),
      '/groups/detail/:group_id/chat/:uuid': (route) =>
          MaterialPage<FriendDetailScreen>(
            child: FriendDetailScreen(
              route.pathParameters['uuid'] ?? '',
            ),
          ),
      ..._pointRoutes('/groups/detail/:group_id/chat/:uuid'),
      '/groups/detail/:group_id/chat/:uuid/diaries': (route) =>
          MaterialPage<UserDiariesScreen>(
            child: UserDiariesScreen(route.pathParameters['uuid'] ?? ''),
          ),
      '/groups/detail/:group_id/chat/:uuid/diary/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/groups/detail/:group_id/edit_my_page': (route) =>
          const MaterialPage<EditMyPageScreen>(
            child: EditMyPageScreen(),
          ),
      '/groups/detail/:group_id/friends/:uuid': (route) =>
          MaterialPage<FriendDetailScreen>(
            child: FriendDetailScreen(route.pathParameters['uuid'] ?? ''),
          ),
      ..._pointRoutes('/groups/detail/:group_id/friends/:uuid'),
      '/groups/detail/:group_id/friends/:uuid/diary/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/groups/detail/:group_id/edit': (route) =>
          MaterialPage<GroupDetailOwnerScreen>(
            child: GroupEditScreen(
              groupId: route.pathParameters['group_id'] ?? '',
            ),
          ),
      ..._pointRoutes('/groups/detail/:group_id'),
      '/groups/categories/detail': (route) =>
          const MaterialPage<GroupCategoryScreen>(
            child: GroupCategoryScreen(),
          ),

      /// END groupTab

      /// START diaryTab
      '/diary/banner': (route) {
        final title =
            route.queryParameters[WebViewScreen.paramKeyTitle].toString();
        final url = route.queryParameters[WebViewScreen.paramKeyUrl].toString();
        return MaterialPage<WebViewScreen>(
          fullscreenDialog: true,
          child: WebViewScreen(
            title,
            url,
            haveLinkOnPageToShow: false,
          ),
          // fullscreenDialog: true,
        );
      },
      '/diary/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/diary/comment/detail/:uuid': (route) =>
          MaterialPage<FriendDetailScreen>(
            child: FriendDetailScreen(route.pathParameters['uuid'] ?? ''),
          ),
      ..._pointRoutes('/diary/comment/detail/:uuid'),
      '/diary/create': (route) => const MaterialPage<CreateDiaryScreen>(
            child: CreateDiaryScreen(),
          ),
      ..._pointRoutes('/diary/create'),
      '/diaries/:uuid': (route) => MaterialPage<UserDiariesScreen>(
            child: UserDiariesScreen(route.pathParameters['uuid'] ?? ''),
          ),
      '/diaries/:uuid/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },

      /// END diaryTab

      /// START my_page
      '/my_page': (route) => const MaterialPage<MyPageScreen>(
            child: MyPageScreen(),
          ),
      '/my_page/edit/preview': (route) =>
          const MaterialPage<PreviewMyPageScreen>(
            child: PreviewMyPageScreen(),
          ),
      '/my_page/edit': (route) => const MaterialPage<EditMyPageScreen>(
            child: EditMyPageScreen(),
          ),
      '/edit_my_page': (route) => const MaterialPage<EditMyPageScreen>(
            child: EditMyPageScreen(),
          ),
      '/my_page/edit-self-history/edit-caption': (route) =>
          MaterialPage<String>(
            child: CaptionEditingScreen(
              initialValue:
                  route.queryParameters[CaptionEditingScreen.initialValueKey] ??
                      '',
              isEditable:
                  route.queryParameters[CaptionEditingScreen.isEditableKey] ==
                      'true',
            ),
          ),
      '/my_page/edit-self-history/preview': (route) =>
          const MaterialPage<SelfHistoryPreviewScreen>(
            child: SelfHistoryPreviewScreen(),
          ),
      '/my_page/edit-self-history': (route) =>
          const MaterialPage<EditSelfHistoryScreen>(
            child: EditSelfHistoryScreen(),
          ),
      '/my_page/visit-history': (route) =>
          const MaterialPage<VisitHistoryScreen>(
            child: VisitHistoryScreen(),
          ),
      '/my_page/visit-history/user_status': (route) =>
          const MaterialPage<UserStatusScreen>(
            child: UserStatusScreen(),
          ),
      '/my_page/visit-history/user_status/membership': (route) =>
          MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              '会員ランク詳細',
              const OshirucoUrl().membership,
            ),
          ),
      '/my_page/visit-history/membership': (route) =>
          MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              '会員ランク詳細',
              const OshirucoUrl().membership,
            ),
          ),
      '/my_page/visit-history/detail/:uuid': (route) =>
          MaterialPage<FriendDetailScreen>(
            child: FriendDetailScreen(route.pathParameters['uuid'] ?? ''),
          ),
      ..._pointRoutes('/my_page/visit-history/detail/:uuid'),
      '/my_page/visit-history/detail/:uuid/diaries': (route) =>
          MaterialPage<UserDiariesScreen>(
            child: UserDiariesScreen(route.pathParameters['uuid'] ?? ''),
          ),
      '/my_page/visit-history/detail/:uuid/diaries/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/my_page/visit-history-setting': (route) =>
          const MaterialPage<VisitHistorySettingScreen>(
            child: VisitHistorySettingScreen(),
          ),
      '/my_page/favorite': (route) => const MaterialPage<FavoriteScreen>(
            child: FavoriteScreen(),
          ),
      '/my_page/favorite/detail/:uuid': (route) =>
          MaterialPage<FriendDetailScreen>(
            child: FriendDetailScreen(route.pathParameters['uuid'] ?? ''),
          ),
      ..._pointRoutes('/my_page/favorite/detail/:uuid'),
      '/my_page/favorite/detail/:uuid/diary/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/my_page/block': (route) => const MaterialPage<BlockScreen>(
            child: BlockScreen(),
          ),
      '/my_page/help': (route) => const MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              'ヘルプ',
              '$_domain/page/app/help.html',
            ),
          ),
      '/my_page/terms': (route) => const MaterialPage<TermsScreen>(
            child: TermsScreen(),
          ),
      '/my_page/terms/term-of-use': (route) =>
          const MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              '利用規約',
              '$_domain/page/app/rules.html',
            ),
          ),
      '/my_page/terms/privacy-policy': (route) =>
          const MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              'プライバシーポリシー',
              '$_domain/page/app/privacy.html',
            ),
          ),
      '/my_page/terms/law': (route) => const MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              '特定商取引法に基づく表示',
              '$_domain/page/app/law.html',
            ),
          ),
      '/my_page/company': (route) => const MaterialPage<MyPageScreen>(
            child: WebViewScreen(
              '運営会社',
              '$_domain/page/app/profile.html',
              titleChanged: false,
            ),
          ),
      '/my_page/user_status': (route) => const MaterialPage<UserStatusScreen>(
            child: UserStatusScreen(),
          ),
      '/my_page/user_status/membership': (route) => MaterialPage<WebViewScreen>(
            child: WebViewScreen(
              '会員ランク詳細',
              const OshirucoUrl().membership,
            ),
          ),
      '/my_page/point': (route) => MaterialPage<int?>(
            child: PointScreen(),
          ),
      '/my_page/point/history': (route) =>
          const MaterialPage<PointHistoryScreen>(
            child: PointHistoryScreen(),
          ),

      /// END my_page
      /// START communicationTab
      '/communication/detail/:uuid': (route) =>
          MaterialPage<FriendDetailScreen>(
            child: FriendDetailScreen(route.pathParameters['uuid'] ?? ''),
          ),
      ..._pointRoutes('/communication/detail/:uuid'),
      '/communication/detail/:uuid/diary/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/communication/chat/:uuid': (route) =>
          MaterialPage<CommunicationChatScreen>(
            child: CommunicationChatScreen(route.pathParameters['uuid'] ?? ''),
          ),
      ..._pointRoutes('/communication/chat/:uuid'),
      '/communication/chat/:uuid/detail': (route) =>
          MaterialPage<FriendDetailScreen>(
            child: FriendDetailScreen(route.pathParameters['uuid'] ?? ''),
          ),
      ..._pointRoutes('/communication/chat/:uuid/detail'),
      '/communication/chat/:uuid/detail/diaries': (route) =>
          MaterialPage<UserDiariesScreen>(
            child: UserDiariesScreen(route.pathParameters['uuid'] ?? ''),
          ),
      '/communication/chat/:uuid/detail/diaries/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/communication/chat/:uuid/detail/diary/comment': (route) {
        final diaryJsonString =
            route.queryParameters[DiaryCommentScreen.paramDiaryId].toString();
        final decoded = jsonDecode(diaryJsonString) as Map<String, dynamic>;
        final diary = Diary.fromJson(decoded);

        return MaterialPage<DiaryCommentScreen>(
          child: DiaryCommentScreen(diary),
        );
      },
      '/communication/chat/:uuid/detail/selfhistory': (route) =>
          MaterialPage<SelfHistoryScreen>(
            child: SelfHistoryScreen(
              route.pathParameters['uuid'] ?? '',
            ),
          ),

      /// END communicationTab
      '/concierge': (route) => const MaterialPage<ConciergeScreen>(
            child: ConciergeScreen(type: MessageType.none),
          )
    },
    onUnknownRoute: (String path) {
      return const MaterialPage<RestartScreen>(
        child: RestartScreen(),
      );
    },
  ),
);

Map<String, PageBuilder> _pointRoutes(String prefix) {
  return <String, PageBuilder>{
    '$prefix/point': (route) => MaterialPage<int?>(
          child: PointScreen(),
        ),
    '$prefix/point/history': (route) => const MaterialPage<PointHistoryScreen>(
          child: PointHistoryScreen(),
        ),
    '$prefix/user_status': (route) => const MaterialPage<UserStatusScreen>(
          child: UserStatusScreen(),
          fullscreenDialog: false,
        ),
    '$prefix/user_status': (route) => const MaterialPage<UserStatusScreen>(
          child: UserStatusScreen(),
          fullscreenDialog: false,
        ),
    '$prefix/user_status/membership': (route) => MaterialPage<WebViewScreen>(
          child: WebViewScreen(
            '会員ランク詳細',
            const OshirucoUrl().membership,
          ),
        ),
  };
}

class _OshirucoRouteObserver extends RoutemasterObserver {
  _OshirucoRouteObserver();

  @override
  void didPop(Route route, Route? previousRoute) {
    debugPrint('Popped a route');
  }

  @override
  void didChangeRoute(RouteData routeData, Page page) {
    debugPrint('New route: ${routeData.path}');
    Analytics.setCurrentScreen(routeData.path);
  }
}
