import 'package:expandable_searchbar/expandable_searchbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpandableSearchBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ExpandableSearchBar Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpandableSearchBar(
              onSearch: (query) {
                setState(() {
                  _searchQuery = query;
                });
              },
              hintText: 'Search...',
              backgroundColor: Colors.grey[200]!,
              iconColor: Colors.blue,
              textStyle: const TextStyle(color: Colors.black87),
            ),
            const SizedBox(height: 20),
            Text('Current search query: $_searchQuery'),
          ],
        ),
      ),
    );
  }
}