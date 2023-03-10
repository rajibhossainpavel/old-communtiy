import 'package:flutter/material.dart';

import 'package:oshiruco_app/gen/assets.gen.dart';

class CommentButton extends StatelessWidget {
  const CommentButton({
    required this.commentNumbers,
    this.onTap,
    Key? key,
  }) : super(key: key);

  /// ボタンを押した時の挙動
  final VoidCallback? onTap;

  /// コメント数
  final int commentNumbers;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Assets.icons.commentGreen.image(height: 26),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              'コメント',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Text('$commentNumbers件'),
        ],
      ),
    );
  }
}
