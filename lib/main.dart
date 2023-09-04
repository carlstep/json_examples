import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:json_examples/models/1.dart';
import 'package:json_examples/models/2.dart';
import 'package:json_examples/models/3.dart';
import 'package:json_examples/models/4.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// 1.dart
Future<String> _loadDataOne() async {
  return await rootBundle.loadString('assets/1.json');
}

// 2.dart
Future<String> _loadDataTwo() async {
  return await rootBundle.loadString('assets/2.json');
}

// 3.dart
Future<String> _loadDataThree() async {
  return await rootBundle.loadString('assets/3.json');
}

// 4.dart
Future<String> _loadDataFour() async {
  return await rootBundle.loadString('assets/4.json');
}

class _HomePageState extends State<HomePage> {
  Future loadDataOne() async {
    String jsonString = await _loadDataOne();
    final jsonResponse = jsonDecode(jsonString);
    One one = One.fromJson(jsonResponse);
    print('${one.id} - ${one.name} - ${one.gender}');
  }

  Future loadDataTwo() async {
    String jsonStringTwo = await _loadDataTwo();
    final jsonResponseTwo = jsonDecode(jsonStringTwo);
    Two two = Two.fromJson(jsonResponseTwo);
    print('${two.name} - ${two.classes[0]} - ${two.classes[2]}');
  }

  Future loadDataThree() async {
    String jsonStringThree = await _loadDataThree();
    final jsonResponseThree = jsonDecode(jsonStringThree);
    Three three = Three.fromJson(jsonResponseThree);
    print(
        '${three.name} >> ${three.propertyThree.height * three.propertyThree.width}');
  }

  Future loadDataFour() async {
    String jsonStringFour = await _loadDataFour();
    final jsonResponseFour = jsonDecode(jsonStringFour);
    Four four = Four.fromJson(jsonResponseFour);
    print(
        '${four.id} >> ${four.flightName} - ID: ${four.passenger[1].id} - BAGS: ${four.passenger[1].checkedBags}');
  }

  @override
  void initState() {
    super.initState();
    loadDataOne();
    loadDataTwo();
    loadDataThree();
    loadDataFour();
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
