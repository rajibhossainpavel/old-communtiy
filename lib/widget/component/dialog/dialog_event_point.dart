import 'package:flutter/material.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';

Future<String?> showEventPoint(
  BuildContext context, {
  required String subtitle,
  required int point,
}) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return _AlertBody(
        subtitle: subtitle,
        point: point,
      );
    },
  );
}

class _AlertBody extends StatelessWidget {
  final String subtitle;
  final int point;

  const _AlertBody({
    Key? key,
    required this.subtitle,
    required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconSize = MediaQuery.of(context).size.width * 0.25;

    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.all(20),
      content: Stack(
        children: [
          Assets.images.popBgRadial.image(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Assets.images.popipNoname.image(),
                  ),
                  const Positioned(
                    top: 15,
                    child: Text(
                      '日記ポイントボーナス',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Text(subtitle, style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '本日',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    point.toString(),
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('ポイントプレゼント！', style: TextStyle(fontSize: 18))
                ],
              ),
              const SizedBox(height: 10),
              Assets.images.point.image(width: iconSize),
              const SizedBox(height: 20),
              const FittedBox(
                child: Text('明日の投稿をお待ちしております。', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
