import 'package:flutter/material.dart';

class Foreground extends StatefulWidget {
  final Widget child;
  final VoidCallback onForeground;

  const Foreground({Key? key, required this.onForeground, required this.child})
      : super(key: key);

  @override
  createState() => _ForegroundState();
}

class _ForegroundState extends State<Foreground> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        widget.onForeground();
        break;
      default:
      // 何もしない
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
