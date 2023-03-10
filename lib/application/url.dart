import 'package:oshiruco_app/application/flavor.dart';

class OshirucoUrl {
  const OshirucoUrl();

  String get marche => flavor == Flavor.production
      ? 'https://oshiruco-marche.glanetcollection.com/'
      : 'https://stg-oshiruco-marche.glanetcollection.com/';

  String get info => flavor == Flavor.production
      ? 'https://oshiruco-marche.glanetcollection.com/info/'
      : 'https://stg-oshiruco-marche.glanetcollection.com/info/';

  String get term => flavor == Flavor.production
      ? 'https://contents.oshiruco.com/page/app/rules.html'
      : 'https://stg-contents.oshiruco.com/page/app/rules.html';

  String get privacy => flavor == Flavor.production
      ? 'https://contents.oshiruco.com/page/app/privacy.html'
      : 'https://stg-contents.oshiruco.com/page/app/privacy.html';

  String get membership => flavor == Flavor.production
      ? 'https://contents.oshiruco.com/page/app/membership.html'
      : 'https://stg-contents.oshiruco.com/page/app/membership.html';
}
