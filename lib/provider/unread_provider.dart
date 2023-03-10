import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/unread_controller.dart';
import 'package:oshiruco_app/provider/api_client_provider.dart';
import 'package:oshiruco_app/state/unread_state/unread_state.dart';

final unreadProvider = StateNotifierProvider<UnreadController, UnreadState>(
  (ref) => UnreadController(
    client: ref.read(oshirucoClientProvider),
  ),
);
