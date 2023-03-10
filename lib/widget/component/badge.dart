import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key? key,
    required int number,
    double size = 22,
    bool bold = true,
  })  : _number = number,
        _size = size,
        _bold = bold,
        super(key: key);
  final int _number;
  final double _size;
  final bool _bold;

  @override
  Widget build(BuildContext context) {
    if (_number == 0) {
      return const SizedBox();
    }
    return Container(
      width: _size,
      height: _size,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(_size),
      ),
      constraints: BoxConstraints(minWidth: _size, minHeight: _size),
      // Materialがないと下線がでる！？ https://stackoverflow.com/questions/47114639/yellow-lines-under-text-widgets-in-flutter
      child: Material(
        type: MaterialType.transparency,
        child: FittedBox(
          child: Text(
            '${_number > 99 ? "99+" : _number}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: _bold ? FontWeight.bold : FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
