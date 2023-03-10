import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/widget/screen/home_screen.dart';

final tabTypeProvider = StateProvider<TabType>((ref) => TabType.friend);
