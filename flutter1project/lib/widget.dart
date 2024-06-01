import 'package:flutter/material.dart';

class textInput extends StatelessWidget {
 final TextEditingController controller;
 String textHint ;
 textInput({super.key , required this.controller,required this.textHint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: textHint),
    );
  }
}
