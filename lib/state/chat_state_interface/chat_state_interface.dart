import 'package:oshiruco_app/model/chat_interface/chat_interface.dart';

abstract class ChatStateInterface {
  List<ChatInterface> get chats;

  int get currentMaximumTimeStamp;

  bool get isLoading;
  bool get isLastPage;
}
