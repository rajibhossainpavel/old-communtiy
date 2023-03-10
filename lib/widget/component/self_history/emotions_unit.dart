import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/model/enum/emotion.dart';
import 'package:oshiruco_app/model/enum/self_history_status.dart';
import 'package:oshiruco_app/provider/self_history_provider.dart';
import 'package:oshiruco_app/widget/component/self_history/post_status_switch.dart';
import 'package:oshiruco_app/widget/component/self_history/text_input_bar.dart';
import 'package:oshiruco_app/widget/screen/self_history/sentence_editing_screen.dart';

class EmotionsUnit extends HookConsumerWidget {
  const EmotionsUnit({
    required EmotionType type,
    required Function(String) onSentenceUpdated,
    required int age,
    String sentence = '',
    Key? key,
  })  : _type = type,
        _age = age,
        _sentence = sentence,
        _onSentenceUpdated = onSentenceUpdated,
        super(key: key);

  final int _age;

  final EmotionType _type;

  final String _sentence;

  final Function(String) _onSentenceUpdated;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(editSelfHistoryProvider.notifier);
    final state = ref.watch(editSelfHistoryProvider);
    final defaultString = '$_age代で${_type.toJaString()}こと';
    final isComplete = useState(
      state.isDraftStatusComplete(
        _age,
        type: _type,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Text(defaultString),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: TextInputBar(
            enable: true,
            contents: _sentence,
            hintText: '$defaultStringは何ですか?',
            onTap: () async {
              final val = await Navigator.of(context).push<String>(
                MaterialPageRoute<String>(
                  builder: (_) => SentenceEditingScreen(
                    title: defaultString,
                    initialValue: _sentence,
                    isEditable: !isComplete.value,
                  ),
                ),
              );
              if (val != null) {
                _onSentenceUpdated(val);
              }
            },
          ),
        ),
        PostStatusSwitch(
          isActive: _sentence.isNotEmpty,
          initialValue: isComplete.value,
          onUpdate: (value) {
            isComplete.value = value;
            if (value) {
              controller.updateStatus(
                context,
                age: _age,
                type: _type,
                status: SelfHistoryStatus.done,
              );
            } else {
              controller.updateStatus(
                context,
                age: _age,
                type: _type,
                status: SelfHistoryStatus.draft,
              );
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(seconds: 1),
                content: Text('原稿の状態を${value ? '完成' : '途中'}にしました'),
              ),
            );
          },
        ),
      ],
    );
  }
}
