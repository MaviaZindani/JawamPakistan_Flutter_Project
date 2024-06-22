import 'package:flutter/material.dart';
import 'package:flutter2project/chess/chess_screen.dart';
import 'package:flutter2project/lodo/lodo_screen.dart';
import 'package:flutter2project/main_custom_widget.dart';
import 'package:flutter2project/periodic_table/view/periodic_table_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MoveToNext(moveTo: const LodoScreen(), text: 'Goto Lodo User interface'),
           const SizedBox(
              height: 30,
            ),
            MoveToNext(moveTo: const PeriodicTableView(), text: 'Goto Preiodic Table User interface'),
            const SizedBox(
              height: 30,
            ),
            MoveToNext(moveTo: const MyHomePage(title: 'Chess game',), text: 'Goto Chess Game')
          ],
        ),
      ),
    );
  }
}