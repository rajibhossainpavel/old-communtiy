import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linkify/linkify.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

final Map<String, HighlightedWord> initialState = {
  ' ': HighlightedWord(
    textStyle: htTextStyle,
  ),
  'https://': HighlightedWord(
    textStyle: linkableTextStyle,
  ),
  'http://': HighlightedWord(
    textStyle: linkableTextStyle,
  ),
};

final htWordControllerProvider = StateNotifierProvider<
        HighlightsTextWordController, Map<String, HighlightedWord>>(
    (_) => HighlightsTextWordController(initialState));

class HighlightsTextWordController
    extends StateNotifier<Map<String, HighlightedWord>> {
  HighlightsTextWordController(Map<String, HighlightedWord> state)
      : super(state);
  Map<String, HighlightedWord> links = {};

  void updateFoundLinks({Map<String, HighlightedWord>? clickables}) {
    if (clickables != null && clickables.isNotEmpty) links.addAll(clickables);
    state = {...initialState, ...links};
  }

  void updateOnSearchWords(String pattern,
      {Map<String, HighlightedWord>? clickables}) {
    if (clickables != null && clickables.isNotEmpty) links.addAll(clickables);
    state = {
      pattern: HighlightedWord(
        textStyle: htTextStyle,
      ),
    };
  }

  void updatedClickableText(String text) {
    final Map<String, HighlightedWord> dictionaryWords = {};
    var elements = linkify(
      text,
      options: const LinkifyOptions(defaultToHttps: true),
    );
    for (var el in elements) {
      if (el is LinkableElement) {
        dictionaryWords.addAll({
          el.text: HighlightedWord(
            textStyle: linkableTextStyle,
            onTap: () {
              launch(el.url);
            },
          )
        });
      }
    }
    if (dictionaryWords.isNotEmpty) {
      links.addAll(dictionaryWords);
    }
  }

  void clearClickableLinks() {
    links = {};
    state = {
      ' ': HighlightedWord(
        textStyle: htTextStyle,
      ),
    };
  }
}

TextStyle linkableTextStyle =
    OshirucoTextStyles.medium.copyWith(color: Colors.blue);
TextStyle htTextStyle = OshirucoTextStyles.medium
    .merge(const TextStyle(backgroundColor: Colors.yellow));
