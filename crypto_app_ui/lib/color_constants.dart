import 'package:flutter/material.dart';

LinearGradient maincolor = LinearGradient(
  colors: [
    Colors.blue,
    Color.fromARGB(255, 48, 124, 187),
    Colors.white70,
    Colors.blueAccent,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

LinearGradient sheetcolor = LinearGradient(
  colors: [Colors.grey, Colors.white54, Colors.white30, Colors.black,],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
