import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/highlights_text_word_controller.dart';
import 'package:highlight_text/highlight_text.dart';

final highlightsTextWordProvider = StateNotifierProvider.autoDispose<
    HighlightsTextWordController, Map<String, HighlightedWord>>(
  (ref) => HighlightsTextWordController(
    ref.watch(htWordControllerProvider),
  ),
);
