import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  TextEditingController namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.trolley,
            color: Colors.white,
          )
        ],
        title: const Text(
          'Profile Screen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(hintText: 'Enter your name!'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                print("name: ${namecontroller.text}");
                namecontroller.clear();
              },
              child: Text('Press'),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(2000, 50)),
              ),
            )
          ],
        ),
      ),
    );
  }
}