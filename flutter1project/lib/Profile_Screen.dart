import 'package:flutter/material.dart';
import 'package:flutter1project/widget.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController skillcontroller = TextEditingController();
  TextEditingController hobbiecontroller = TextEditingController();
  TextEditingController professioncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.trolley,color: Colors.white,)],
        title: const Text('Profile Screen',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
        child: Column(
          children: [
            textInput(controller: namecontroller, textHint: 'Enter your name'),
            SizedBox(height: 20,),
            textInput(controller: skillcontroller, textHint: 'Enter your skills'),
            SizedBox(height: 20,),
            textInput(controller: hobbiecontroller, textHint: 'Enter your hobbies'),
            SizedBox(height: 20,),
            textInput(controller: professioncontroller, textHint: 'Enter your Profession'),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                print("""
                name: ${namecontroller.text}
                skill: ${skillcontroller.text}
                hobbie: ${hobbiecontroller.text}
                Profession: ${professioncontroller.text}
                """);
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
