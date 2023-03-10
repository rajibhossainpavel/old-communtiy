import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/provider/api_client_provider.dart';
import 'package:oshiruco_app/repository/association_repository.dart';
import 'package:oshiruco_app/repository/chat_repository.dart';
import 'package:oshiruco_app/repository/communication_repository.dart';
import 'package:oshiruco_app/repository/concierge_repository.dart';
import 'package:oshiruco_app/repository/diaries_repository.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/repository/network_repository.dart';
import 'package:oshiruco_app/repository/points_repository.dart';
import 'package:oshiruco_app/repository/self_history_repository.dart';
import 'package:oshiruco_app/repository/setting_repository.dart';
import 'package:oshiruco_app/repository/user_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/repository/visit_history_repository.dart';

final usersRepositoryProvider = Provider(
  (ref) => UsersRepository(
    client: ref.watch(oshirucoClientProvider),
  ),
);

final userRepositoryProvider = Provider(
  (ref) => UserRepository(
    client: ref.watch(oshirucoClientProvider),
  ),
);

final diariesRepositoryProvider = Provider(
  (ref) => DiariesRepository(
    client: ref.watch(oshirucoClientProvider),
  ),
);

final selfhistoryRepositoryProvider = Provider(
  (ref) => SelfHistoryRepository(
    client: ref.watch(oshirucoClientProvider),
  ),
);

final groupRepositoryProvider = Provider(
  (ref) => GroupsRepository(
    client: ref.watch(oshirucoClientProvider),
  ),
);
final associationRepositoryProvider = Provider(
  (ref) => AssociationRepository(
    client: ref.watch(oshirucoClientProvider),
  ),
);

final settingRepositoryProvider = Provider(
  (ref) => SettingRepository(
    client: ref.watch(oshirucoClientProvider),
  ),
);

final communicationRepositoryProvider = Provider(
  (ref) => CommunicationRepository(
    client: ref.watch(
      oshirucoClientProvider,
    ),
  ),
);

final visitHistoryRepositoryProvider = Provider(
  (ref) => VisitHistoryRepository(
    client: ref.watch(
      oshirucoClientProvider,
    ),
  ),
);

final pointsRepositoryProvider = Provider(
  (ref) => PointsRepository(
    ref.watch(
      oshirucoClientProvider,
    ),
  ),
);

final conciergeRepositoryProvider = Provider(
  (ref) => ConciergeRepository(
    client: ref.read(
      oshirucoClientProvider,
    ),
  ),
);

final netWorkRepositoryProvider = Provider(
  (ref) => NetWorkRepository(
    ref.read(
      oshirucoClientProvider,
    ),
  ),
);

final chatRepositoryProvider = Provider(
  (_) => ChatRepository(),
);
