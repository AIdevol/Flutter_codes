import 'package:custom_bottom_navbar/fina_screen_view.dart';
import 'package:flutter/material.dart';

Future<void> main() async => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Banner(
        message: 'flashflutter',
        location: BannerLocation.bottomStart,
        child: FinalView(),
      ),
    );
  }
}
