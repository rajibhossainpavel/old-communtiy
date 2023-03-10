import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: OshirucoCircleProgressIndicator(),
      ),
    );
  }
}
