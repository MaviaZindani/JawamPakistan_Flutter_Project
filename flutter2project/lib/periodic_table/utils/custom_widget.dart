import 'package:flutter/material.dart';

class ChemicalBox extends StatelessWidget {
  final Color color;
  final String chemicalsambel;
  final String chemicalename;
  final String chemicalenumber;
  final String boxnumber;

  const ChemicalBox(
      {super.key,
      required this.color,
      required this.chemicalsambel,
      required this.chemicalename,
      required this.chemicalenumber,
      required this.boxnumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(border: Border.all(color: color, width: 2.0)),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  boxnumber,
                  style: TextStyle(color: color, fontSize: 7),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  chemicalsambel,
                  style: TextStyle(
                      color: color,
                      fontFamily: AutofillHints.addressCityAndState,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  chemicalename,
                  style: TextStyle(
                      color: color,
                      fontFamily: AutofillHints.addressCityAndState,
                      fontSize: 7,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "($chemicalenumber)",
                  style: TextStyle(
                      color: color,
                      fontFamily: AutofillHints.addressCityAndState,
                      fontSize: 7,
                      fontWeight: FontWeight.normal),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EmptyPlace extends StatelessWidget {
  final double height;
  final double width;
  final double? padding;
  const EmptyPlace({super.key, required this.height, required this.width, this.padding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:  padding ?? 0),
      child: Container(
        height: height,
        width: width,
      ),
    );
  }
}
