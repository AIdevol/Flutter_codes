import 'package:flutter/material.dart';
import 'dart:math';

class MatrixPainter extends CustomPainter {
  final List<String> _matrixSymbols = ['0', '1'];
  final Random _random = Random();
  final double _symbolSize;
  final double _speed;
  final List<List<int>> _drops;

  MatrixPainter(this._symbolSize, this._speed, this._drops);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    for (int i = 0; i < _drops.length; i++) {
      for (int j = 0; j < _drops[i].length; j++) {
        int drop = _drops[i][j];
        if (drop > 0) {
          double x = i * _symbolSize;
          double y = j * _symbolSize;

          TextSpan span = TextSpan(
            text: _matrixSymbols[_random.nextInt(_matrixSymbols.length)],
            style: TextStyle(color: Colors.green, fontSize: _symbolSize),
          );
          TextPainter textPainter = TextPainter(
            text: span,
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
          );
          textPainter.layout();
          textPainter.paint(canvas, Offset(x, y));
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
