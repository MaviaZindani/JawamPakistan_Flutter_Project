import 'package:flutter/material.dart';

List<Map> data = [
  {
    "number": const NetworkImage(
        "https://cdn.nba.com/headshots/nba/latest/1040x760/445.png"),
    'titel': 'mavia',
    'subtitel': "Work For Betterment"
  },
  {
    "number": const NetworkImage(
        "https://cdn.nba.com/headshots/nba/latest/1040x760/445.png"),
    'titel': 'maaz',
    'subtitel': "find lost person"
  },
  {
    "number": const NetworkImage(
        "https://www.pngall.com/wp-content/uploads/2016/04/Happy-Person-Free-Download-PNG.png"),
    'titel': 'ali',
    'subtitel': "inshallha i will make change"
  },
  {
    "number": const AssetImage("assats/images/download.jpg"),
    'titel': 'yaseen',
    'subtitel': "be a doctor"
  },
];

class HomeScreenCotroller {
  void delete(int index) {
    data.removeAt(index);
  }

  add(BuildContext context, TextEditingController number,
      TextEditingController title, TextEditingController subTitel) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(25.0),
            child: Wrap(
              children: [
                TextField(
                  controller: number,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Roll number',
                    prefixStyle:
                        TextStyle(fontFamily: AutofillHints.postalCode),
                  ),
                ),
                TextField(
                    controller: title,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'Name',
                      prefixStyle:
                          TextStyle(fontFamily: AutofillHints.givenName),
                    )),
                TextField(
                    controller: subTitel,
                    keyboardType: TextInputType.none,
                    decoration: const InputDecoration(
                      hintText: 'Sub Titel',
                      prefixStyle:
                          TextStyle(fontFamily: AutofillHints.givenName),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25, left: 8, bottom: 8, right: 8),
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        style: const ButtonStyle(),
                        onPressed: () {
                          // ignore: unrelated_type_equality_checks
                          if (title != '' &&
                              // ignore: unrelated_type_equality_checks
                              subTitel != '' &&
                              // ignore: unrelated_type_equality_checks
                              number != '') {
                            data.add({
                              "number": number.text,
                              "titel": title.text,
                              "subtitel": subTitel.text
                            });

                            number.clear();
                            title.clear();
                            subTitel.clear();
                            print('done');
                          }
                        },
                        child: const Text('Add The User')),
                  ),
                )
              ],
            ),
          );
        });
  }

  edit(
    BuildContext context,
  ) {
    final TextEditingController rollNumber = TextEditingController();
    final TextEditingController title1= TextEditingController();
    final TextEditingController subtitel1 = TextEditingController();

    showModalBottomSheet(
        context: context,
        
        builder: (builder,) {
          return Padding(
            padding: const EdgeInsets.all(25.0),
            child: Wrap(
              children: [
                TextField(
                  controller: rollNumber,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Roll number',
                    prefixStyle:
                        TextStyle(fontFamily: AutofillHints.postalCode),
                  ),
                ),
                TextField(
                    controller: title1,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'Name',
                      prefixStyle:
                          TextStyle(fontFamily: AutofillHints.givenName),
                    )),
                TextField(
                    controller: subtitel1,
                    keyboardType: TextInputType.none,
                    decoration: const InputDecoration(
                      hintText: 'Sub Titel',
                      prefixStyle:
                          TextStyle(fontFamily: AutofillHints.givenName),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25, left: 8, bottom: 8, right: 8),
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        style: const ButtonStyle(),
                        onPressed: () {
                          // ignore: unrelated_type_equality_checks
                            data.add({
                              "number": rollNumber.text,
                              "titel": title1.text,
                              "subtitel": subtitel1.text
                            });

                            rollNumber.clear();
                            title1.clear();
                            subtitel1.clear();
                            print('done');
                          
                        },
                        child: const Text('Add The User')),
                  ),
                )
              ],
            ),
          );
        });
  }
}
