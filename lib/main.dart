import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:json_examples/models/1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      title: 'JSON',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<String> _loadData() async {
  return await rootBundle.loadString('assets/1.json');
}

class _HomePageState extends State<HomePage> {
  Future loadData() async {
    String jsonString = await _loadData();
    final jsonResponse = jsonDecode(jsonString);
    One one = One.fromJson(jsonResponse);
    print('${one.id} - ${one.name} - ${one.gender}');
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON Examples'),
      ),
      body: Container(
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('JSON Examples'),
            ],
          ),
        ),
      ),
    );
  }
}
