import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final title = TextEditingController();
  final subTitel = TextEditingController();
  final number = TextEditingController();
  final delete = 0;
  List<Map> data = [
    {"number":const NetworkImage("https://neweralive.na/storage/images/2023/may/lloyd-sikeba.jpg"), 'titel': 'mavia', 'subtitel': "Work For Betterment"},
    {"number":const NetworkImage("https://cdn.nba.com/headshots/nba/latest/1040x760/445.png"), 'titel': 'maaz', 'subtitel': "find lost person"},
    {"number":const NetworkImage("https://www.pngall.com/wp-content/uploads/2016/04/Happy-Person-Free-Download-PNG.png"), 'titel': 'ali', 'subtitel': "inshallha i will make change"},
    {"number":const AssetImage("assats/images/download.jpg"),'titel': 'yaseen', 'subtitel': "be a doctor"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('My home page'),
        centerTitle: true,
        actions: const [Icon(Icons.menu)],
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side:
                          const BorderSide(width: 1.5, color: Colors.black54)),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: data[index].values.toList()[0],
                  ),
                  title: Text(data[index].values.toList()[1].toString()),
                  subtitle: Text(data[index].values.toList()[2].toString()),
                  trailing: IconButton(
                      onPressed: () {
                        data.removeAt(index);
                        setState(() {});
                      },
                      icon: const Icon(Icons.delete)),
              )
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
                              style: ButtonStyle(),
                              onPressed: () {
                                if (title != '' &&
                                    subTitel != '' &&
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
                                  setState(() {});
                                }
                              },
                              child: const Text('Add The User')),
                        ),
                      )
                    ],
                  ),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
