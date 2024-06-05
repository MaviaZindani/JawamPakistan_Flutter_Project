import 'package:flutter/material.dart';
import 'package:flutter2project/lodo/lodo_screen.dart';
import 'package:flutter2project/chess/chess_screen.dart';
import 'package:flutter2project/periodic_table/view/periodic_table_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PeriodicTableView(),
    );
  }
}


