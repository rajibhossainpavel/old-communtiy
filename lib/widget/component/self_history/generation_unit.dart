import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/enum/emotion.dart';
import 'package:oshiruco_app/model/self_history/self_history.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';
import 'package:oshiruco_app/widget/component/self_history/carousel_navigator.dart';
import 'package:oshiruco_app/widget/component/self_history/image_carousel_picker.dart';
import 'package:oshiruco_app/widget/component/self_history/text_input_bar.dart';

class GenerationUnit extends HookWidget {
  const GenerationUnit({
    required SelfHistory history,
    Key? key,
  })  : _history = history,
        super(key: key);

  final SelfHistory _history;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          color: OshirucoColors.bgGreyDark,
          padding: const EdgeInsets.all(12.0),
          child: Text(
            '${_history.generation}代の自分',
            style: OshirucoTextStyles.mediumBold,
          ),
        ),
        if (_history.photos.isNotEmpty) ...[
          ImageCarouselPicker(
            photos: _history.photos,
            isSelectable: false,
            onPageChanged: (val) => selectedIndex.value = val,
            onImageSelected: (index, val) => <void>{},
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: TextInputBar.fromCaption(
              enable: false,
              contents: _history.photos[selectedIndex.value].caption,
              hintText: '',
              onTap: null,
            ),
          ),
          const OshirucoDivider(),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: CarouselNavigator(
              isEditable: false,
              itemCount: _history.photos.length,
              selectedIndex: selectedIndex.value,
              isDeleteEnable: false,
              onTapRemoveImage: () => <void>{},
            ),
          ),
          const OshirucoDivider(),
        ],
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 32),
            if (_history.joy.sentence.isNotEmpty)
              ...emotionalCaptionUnits(
                sentence: _history.joy.sentence,
                type: EmotionType.joy,
              ),
            if (_history.anger.sentence.isNotEmpty)
              ...emotionalCaptionUnits(
                sentence: _history.anger.sentence,
                type: EmotionType.anger,
              ),
            if (_history.sorrow.sentence.isNotEmpty)
              ...emotionalCaptionUnits(
                sentence: _history.sorrow.sentence,
                type: EmotionType.sorrow,
              ),
            if (_history.enjoy.sentence.isNotEmpty)
              ...emotionalCaptionUnits(
                sentence: _history.enjoy.sentence,
                type: EmotionType.enjoy,
              ),
            const SizedBox(height: 32),
          ],
        ),
      ],
    );
  }

  List<Widget> emotionalCaptionUnits({
    required EmotionType type,
    required String sentence,
  }) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Text(
          '${_history.generation}代で${type.toJaString()}こと',
        ),
      ),
      Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8),
        child: TextInputBar(
          enable: false,
          contents: sentence,
          hintText: '${_history.generation}代で${type.toJaString()}ことは何ですか?',
        ),
      ),
    ];
  }
}
