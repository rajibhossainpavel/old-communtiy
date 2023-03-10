import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/concierge_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/provider/s3_client_provider.dart';
import 'package:oshiruco_app/state/concierge_state/concierge_state.dart';
import 'package:oshiruco_app/widget/screen/concierge_screen.dart';

final conciergeButtonVisibleProvider = StateProvider<bool>((ref) => true);

final conciergeProvider = StateNotifierProvider.autoDispose
    .family<ConciergeController, ConciergeState, MessageType>(
  (ref, type) => ConciergeController(
    chatLatestTimestamp: ref.read(conciergeChatTimestampProvider),
    repository: ref.watch(conciergeRepositoryProvider),
    s3Client: ref.watch(s3ClientProvider),
    uuid: ref.read(uuidProvider),
    messageType: type,
  ),
);
