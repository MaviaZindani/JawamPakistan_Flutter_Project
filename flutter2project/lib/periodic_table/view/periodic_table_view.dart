import 'package:flutter/material.dart';
import 'package:flutter2project/periodic_table/utils/custom_widget.dart';

class PeriodicTableView extends StatelessWidget {
  const PeriodicTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ChemicalBox(color: Color(0xff4EEE66), chemicalsambel: "H", chemicalename: "Hydrogen", chemicalenumber: "1.008", boxnumber: "1"),
                EmptyPlace(height: 38, width: 38*16),
                ChemicalBox(color: Color(0xff8399FE), chemicalsambel: "He", chemicalename: "Helium", chemicalenumber: "4.003", boxnumber: "2")

               ],),
               Row(children: [
                
               ],),
               Row(children: [],),
               Row(children: [],),
               Row(children: [],),
               Row(children: [],),
               Row(children: [],),
               Row(children: [],),
               Row(children: [],),
               Row(children: [],),
          ]
        ),
      ),
    );
  }
}