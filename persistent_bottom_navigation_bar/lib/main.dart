import 'package:flutter/material.dart';
import 'package:persistent_bottom_navigation_bar/mainwrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Banner(
        message: 'flashflutter',
        location: BannerLocation.bottomStart,
        child: MainWrapper(),
      ),
    );
  }
}
