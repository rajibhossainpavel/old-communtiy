import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/enum/emotion.dart';
import 'package:oshiruco_app/model/enum/self_history_status.dart';
import 'package:oshiruco_app/provider/self_history_provider.dart';
import 'package:oshiruco_app/widget/component/self_history/emotions_unit.dart';
import 'package:oshiruco_app/widget/component/self_history/photo_selection_unit.dart';
import 'package:oshiruco_app/widget/component/self_history/post_status_switch.dart';

class AgeEditUnit extends HookConsumerWidget {
  const AgeEditUnit({
    required int age,
    Key? key,
  })  : _age = age,
        super(key: key);

  final int _age;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(editSelfHistoryProvider.notifier);
    final state = ref.watch(editSelfHistoryProvider);

    final draftHistory = state.fetchDraftHistoryFromAge(_age);
    final imageCount = draftHistory.photos.length;

    final isDraftStatusComplete = useState(
      state.isDraftStatusComplete(_age),
    );

    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.white,
          padding: const EdgeInsets.all(12.0),
          child: Text(
            '$_age代の自分',
            style: OshirucoTextStyles.mediumBold,
          ),
        ),
        PhotoSelectionUnit(
          age: _age,
          isComplete: isDraftStatusComplete.value,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            PostStatusSwitch(
              initialValue: isDraftStatusComplete.value,
              isActive: imageCount > 0,
              isScript: false,
              onUpdate: (value) {
                isDraftStatusComplete.value = value;
                controller.updateStatus(
                  context,
                  age: _age,
                  status:
                      value ? SelfHistoryStatus.done : SelfHistoryStatus.draft,
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('写真の状態を${value ? '完成' : '途中'}にしました'),
                  ),
                );
              },
            ),
            const SizedBox(height: 32),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final emotionType = EmotionTypeExtension.parseFromInt(index);
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: EmotionsUnit(
                    type: emotionType,
                    age: _age,
                    sentence: state.fetchSentenceFromDraftSelfHistory(
                      age: _age,
                      type: emotionType,
                    ),
                    onSentenceUpdated: (val) => controller.onUpdateSentence(
                      context,
                      val,
                      age: _age,
                      type: emotionType,
                    ),
                  ),
                );
              },
              itemCount: EmotionType.values.length,
            ),
          ],
        ),
      ],
    );
  }
}
