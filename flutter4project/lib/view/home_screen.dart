import 'package:flutter/material.dart';
import 'package:flutter4project/controller/home_screen_cotroller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomeScreenCotroller mavia = HomeScreenCotroller();
  final title = TextEditingController();
  final subTitel = TextEditingController();
  final number = TextEditingController();
  final delete = 0;

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
                    // child: Text(data[index].values.toList()[0]),
                  ),
                  title: Text(data[index].values.toList()[1].toString()),
                  subtitle: Text(data[index].values.toList()[2].toString()),
                  trailing: SizedBox(
                      width: 80,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                mavia.delete;
                                setState(() {});
                              },
                              icon: const Icon(Icons.delete)),
                          IconButton(
                              onPressed: () {
                                mavia.edit;
                                setState(() {});
                              },
                              icon: const Icon(Icons.edit)),
                        ],
                      )),
                ));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mavia.add(context, number, title, subTitel);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
