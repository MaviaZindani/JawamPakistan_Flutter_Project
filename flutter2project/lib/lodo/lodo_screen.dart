import 'package:flutter/material.dart';
import 'package:flutter2project/lodo/custum_container.dart';
import 'package:flutter2project/main_custom_widget.dart';

import '../home_screen.dart';

class LodoScreen extends StatefulWidget {
  const LodoScreen({super.key});

  @override
  State<LodoScreen> createState() => _LodoScreenState();
}

class _LodoScreenState extends State<LodoScreen> {
  @override
  Widget build(BuildContext context) {
    // lodo takes 1 Column and column takes main axis aligment center.
    return Scaffold(
      body:  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // lodo takes 15 Row and Row takes main axis aligment center.
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Plyers_place(plyer: Colors.red),
            PlayPlaceMiddlePlace(placeColor: Colors.green,turn: 0,),
            Plyers_place(plyer: Colors.green),
            ],
           ),
        
        // now lets start mdile base
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [        
             PlayPlaceMiddlePlace(placeColor: Colors.red, turn: 3),
                Container(
                    height: 38 * 3,
                    width: 38 * 3,
                    child: Stack(
                      children: [
                        WinPlace(winColor: Colors.green, turn: 2, width: 38*3, height: 38*1.5,alignment: Alignment.topCenter,),
                        WinPlace(winColor: Colors.yellow, turn: 3, width: 38*1.5, height: 38*3,alignment: Alignment.centerRight,),
                        WinPlace(winColor: Colors.blue, turn: 0, width: 38*3, height: 38*1.5,alignment: Alignment.bottomCenter,),
                        WinPlace(winColor: Colors.red, turn: 1, width: 38*1.5, height: 38*3,alignment: Alignment.centerLeft,),
                      ],
                    )
                    ),
              PlayPlaceMiddlePlace(placeColor: Colors.yellow, turn: 1),
              ],
            ),
        
        //  now lets make third portion
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Plyers_place(plyer: Colors.blue),
             PlayPlaceMiddlePlace(placeColor: Colors.blue,turn: 2,),
             Plyers_place(plyer: Colors.yellow),
            ],
           ),
          const SizedBox(height: 100,),
          MoveToNext(moveTo: const HomeScreen(), text: 'Goto Preiodic Table User interface')
          ],
        ),
      ),
    );
  }
}
