import 'package:flutter/material.dart';
import 'package:matix_animation/matirx_controller.dart';
import 'dart:math'; 

class MatrixScreen extends StatefulWidget {
  const MatrixScreen({super.key});

  @override
  _MatrixScreenState createState() => _MatrixScreenState();
}

class _MatrixScreenState extends State<MatrixScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<List<int>> _drops;
  final double _symbolSize = 14.0;
  final double _speed = 5.0;
  final Random _random = Random(); 
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 50),
    )..addListener(() {
        setState(() {
          _updateDrops();
        });
      });

    _controller.repeat();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    _drops = List.generate(
      screenWidth ~/ _symbolSize,
      (i) => List.generate(
        screenHeight ~/ _symbolSize,
        (j) => _random.nextInt(10), 
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateDrops() {
    for (int i = 0; i < _drops.length; i++) {
      for (int j = 0; j < _drops[i].length; j++) {
        if (_random.nextInt(20) > 18) {
          _drops[i][j] = (_drops[i][j] + 1) % (_drops[i].length + 1);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomPaint(
        painter: MatrixPainter(_symbolSize, _speed, _drops),
        child: Container(),
      ),
    );
  }
}
