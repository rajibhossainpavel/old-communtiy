import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:intl/intl.dart';
import 'package:oshiruco_app/application/appsflyer.dart';
import 'package:oshiruco_app/application/flavor.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/client/remote_config/config.dart';
import 'package:oshiruco_app/controller/dynamic_link_controller.dart';
import 'package:oshiruco_app/model/enum/env.dart';
import 'package:oshiruco_app/router.dart';
import 'package:routemaster/routemaster.dart';
import 'package:webview_flutter/webview_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // const env = String.fromEnvironment('FLAVOR');
  const env = 'staging';

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await dotenv.load(fileName: EnvExtension.fromString(env).getEnvFileName());
  await Firebase.initializeApp();
  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }
  if (Platform.isAndroid) {
    InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
    WebView.platform = SurfaceAndroidWebView();
  }

  await FirebaseMessaging.instance.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  await Config.init();
  initFlavor(env);
  await AppTrackingTransparency.requestTrackingAuthorization();
  await AppsFlyer().init();

  Intl.defaultLocale = 'ja_JP';
  runApp(
    Phoenix(
      child: const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //catching dynamic links
    if (Platform.isIOS) {
      DynamicLinkController.dynamicLinkListener();
    }
    debugPrint('Launching application with: ${dotenv.env['ENV']}');
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ja', 'JP')],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: OshirucoColors.green,
          indicatorColor: OshirucoColors.green,
          primaryTextTheme: const TextTheme(
              headline6: TextStyle(
                  color: OshirucoColors.text, fontWeight: FontWeight.bold)),
          accentIconTheme: Theme.of(context)
              .accentIconTheme
              .copyWith(color: OshirucoColors.green),
          primaryIconTheme: Theme.of(context)
              .primaryIconTheme
              .copyWith(color: OshirucoColors.black),
          textTheme: Theme.of(context).textTheme.apply(
              fontSizeFactor: 1.08,
              bodyColor: OshirucoColors.text,
              displayColor: OshirucoColors.text),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            foregroundColor: OshirucoColors.darkGreen,
          ),
          appBarTheme: const AppBarTheme(
              backgroundColor: OshirucoColors.green,
              textTheme: TextTheme(
                  headline6: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
              iconTheme: IconThemeData(
                color: Colors.white,
              ))),
      routeInformationParser: const RoutemasterParser(),
      routerDelegate: routemaster,
    );
  }
}
