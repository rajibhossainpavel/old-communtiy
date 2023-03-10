import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/provider/highlights_text_word_provider.dart';

class TextHighlightWidget extends HookConsumerWidget {
  final String diaryText;
  final TextStyle textStyle;
  const TextHighlightWidget(
      {required this.diaryText,
      this.textStyle = OshirucoTextStyles.medium,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final htWords = ref.watch(highlightsTextWordProvider);
    return TextHighlight(
      words: htWords,
      text: diaryText,
      textStyle: textStyle,
      binding: HighlightBinding.all,
    );
  }
}
