import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MoveToNext extends StatefulWidget {
  String text = "On title";
  Widget? moveTo;
  MoveToNext({super.key, required this.moveTo, required this.text});

  @override
  State<MoveToNext> createState() => _MoveToNextState();
}

class _MoveToNextState extends State<MoveToNext> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        side: WidgetStatePropertyAll(BorderSide(
          width: 2,
          color: Colors.blueAccent)
        ),
        surfaceTintColor: WidgetStatePropertyAll(Colors.black)
        ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget.moveTo!));
      },
      child: Text(widget.text),
    );
  }
}
