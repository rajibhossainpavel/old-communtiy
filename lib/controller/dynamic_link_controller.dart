import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:oshiruco_app/router.dart';

class DynamicLinkController {
  static void dynamicLinkListener() {
    FirebaseDynamicLinks.instance.onLink.listen(
      (dynamicLinkData) {
        if (dynamicLinkData.link.path.isNotEmpty) {
          String email = dynamicLinkData.link.pathSegments[0];
          bool emailValid = RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(email);
          if (emailValid) {
            routemaster.push('/restoreAccount', queryParameters: {
              restoreUserEmail: email,
            });
          }
        }
      },
      cancelOnError: true,
    );
  }

  static Future<String> generateDynamicLink(String email) async {
    final dynamicLinkParams = DynamicLinkParameters(
      link: Uri.parse("https://oshiruco.com/$email"),
      uriPrefix: "https://oshiruco.page.link",
      iosParameters: const IOSParameters(
          bundleId: 'jp.cayto.oshiruco.ios.stg',
          appStoreId: '1475579446',
          minimumVersion: '3.1.3'),
      androidParameters: const AndroidParameters(
        packageName: 'jp.cayto.oshiruco.android.stg',
      ),
    );

    final dynamicLink =
        await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);

    return dynamicLink.shortUrl.toString();
  }
}
