import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          
          backgroundColor: Color(0xff25D266),
          title: const Text('whatsapp',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900)),
          actions:const [Icon(Icons.camera),SizedBox(width: 15,), Icon(Icons.search),SizedBox(width: 15,), Icon(Icons.menu),SizedBox(width: 15,),],
          bottom:TabBar(tabs: [
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.camera),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('chat'),
          ),Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('status'),
          ),Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('call'),
          ),]),
          
        ),
        
        body:TabBarView(children: [
          Scaffold(
            body: Center(
              child: Text('no image'),
            ),
            floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.abc_outlined),),
          ),
          Scaffold(
            body: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                ),
                title: Text('mavia zindani'),
                subtitle: Text('hello'),
                trailing: Column(
                  children: [
                    CircleAvatar(radius: 10,child: Text('1'),backgroundColor: Color(0xff25D266),),
                    Text('11:26 PM')
                  ],
                ),
              );
            }),
          ),
          Scaffold(
           body:  ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                     border: Border.all(width: 2,color: const Color(0xff25D266))
                  ),
                ),
                title:const Text('mavia zindani'),
                subtitle:const Text('hello'),
              );
            }),
          ),
          Scaffold(
           body:  ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                     border: Border.all(width: 2,color: const Color(0xff25D266))
                  ),
                ),
                title:const Text('mavia zindani'),
                subtitle:const Text('hello'),
                trailing: const Icon(Icons.call),
              );
            }),
         ),
        ])
         
      ),
    );
  }
}
