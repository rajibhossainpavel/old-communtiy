import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/widget/screen/edit_my_page_screen.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class ProfileEnsureScreen extends StatefulWidget {
  const ProfileEnsureScreen({Key? key}) : super(key: key);

  @override
  _ProfileEnsureScreenState createState() => _ProfileEnsureScreenState();
}

class _ProfileEnsureScreenState extends State<ProfileEnsureScreen> {
  final List<TargetFocus> targets = <TargetFocus>[];

  final GlobalKey keyProfilePicture = GlobalKey();

  final GlobalKey keyTweet = GlobalKey();

  void initTarget() {
    targets.clear();
    targets
      ..add(
        TargetFocus(
          shape: ShapeLightFocus.Circle,
          identify: 'profilePicture',
          keyTarget: keyProfilePicture,
          alignSkip: Alignment.bottomRight,
          contents: [
            TargetContent(
              align: ContentAlign.bottom,
              builder: (context, controller) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    SizedBox(height: 16),
                    Text(
                      'プロフィールを充実させましょう\nメインとなる写真を登録してください',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'マイページからいつでも変更できます',
                      style: OshirucoTextStyles.mediumWhite,
                    )
                  ],
                );
              },
            ),
          ],
        ),
      )
      ..add(
        TargetFocus(
          identify: 'tweet',
          keyTarget: keyTweet,
          alignSkip: Alignment.bottomRight,
          shape: ShapeLightFocus.RRect,
          contents: [
            TargetContent(
              align: ContentAlign.top,
              builder: (context, controller) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    SizedBox(height: 15),
                    Text(
                      '次につぶやきを入力しましょう',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '入力例:\n初めまして！いろんな方とお話してみたいです。',
                      style: OshirucoTextStyles.mediumWhite,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      );
  }

  void showTutorial(BuildContext context) {
    initTarget();
    TutorialCoachMark(
      // context,
      targets: targets,
      colorShadow: OshirucoColors.darkGreen,
      textSkip: 'スキップ',
      onSkip: Navigator.of(context).pop,
      textStyleSkip: OshirucoTextStyles.mediumWhiteBold,
      paddingFocus: 10,
      opacityShadow: 0.8,
    ).show(context: context);
  }

  @override
  void initState() {
    Future<void>.delayed(
      // To wait the build of whole widget.
      const Duration(milliseconds: 500),
      () => showTutorial(context),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: width + 144,
              child: SizedBox(
                key: keyTweet,
                height: 68,
                width: width,
              ),
            ),
            const EditMyPageScreen(
              isIncludeAppBar: false,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                alignment: Alignment.center,
                key: keyProfilePicture,
                height: width,
                width: width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
