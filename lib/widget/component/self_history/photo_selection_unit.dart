import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/provider/self_history_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';
import 'package:oshiruco_app/widget/component/self_history/carousel_navigator.dart';
import 'package:oshiruco_app/widget/component/self_history/image_carousel_picker.dart';
import 'package:oshiruco_app/widget/component/self_history/text_input_bar.dart';
import 'package:oshiruco_app/widget/screen/self_history/caption_editing_screen.dart';

class PhotoSelectionUnit extends HookConsumerWidget {
  const PhotoSelectionUnit({
    required int age,
    required bool isComplete,
    Key? key,
  })  : _age = age,
        _isComplete = isComplete,
        super(key: key);

  final int _age;

  final bool _isComplete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(editSelfHistoryProvider.notifier);
    final state = ref.watch(editSelfHistoryProvider);
    final draftHistory = state.fetchDraftHistoryFromAge(_age);
    final selectedIndex = useState(0);
    final imageCount = draftHistory.photos.length;
    final initialCaption = imageCount > selectedIndex.value
        ? draftHistory.photos[selectedIndex.value].caption
        : '';
    return Column(
      children: [
        ImageCarouselPicker(
          photos: draftHistory.photos,
          isSelectable: !_isComplete,
          onPageChanged: (val) => selectedIndex.value = val,
          onImageSelected: (index, val) => controller.onUpdateImageSrc(
            context,
            _age,
            imageSrc: val,
            index: index,
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: TextInputBar.fromCaption(
            enable: imageCount != selectedIndex.value,
            contents: initialCaption,
            onTap: () async {
              final navResult = routemaster.push<String>(
                '/my_page/edit-self-history/edit-caption?${CaptionEditingScreen.isEditableKey}=${!_isComplete}&${CaptionEditingScreen.initialValueKey}=$initialCaption',
              );
              final caption = await navResult.result;
              if (caption != null) {
                controller.onUpdateImageCaption(
                  context,
                  _age,
                  captionNumber: selectedIndex.value,
                  caption: caption,
                );
              }
            },
          ),
        ),
        const OshirucoDivider(),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: CarouselNavigator(
            isEditable: !_isComplete,
            itemCount: imageCount + (_isComplete ? 0 : 1),
            selectedIndex: selectedIndex.value,
            isDeleteEnable: selectedIndex.value != imageCount,
            onTapRemoveImage: () => controller.removeImage(
              context,
              age: _age,
              captionNumber: selectedIndex.value,
            ),
          ),
        ),
        const OshirucoDivider(),
      ],
    );
  }
}
