import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chat app',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Chat app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text("""Get Closer To
        Every One """),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("""Helps you to contact everyone with 
            just easy way"""),
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/image_chat.jpeg'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 75, 71, 71)
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 189, 185, 185),
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                 Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 189, 185, 185),
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                 Container(
                  
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 189, 185, 185),
                    borderRadius: BorderRadius.circular(50)
                  ),
                )
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(119,31,152,1)
                ),
                onPressed: (){
              }, child: Text("Get Started",style: TextStyle(color: Colors.white),),
            )
          ],
         
        ),
      ),
    );
  }
}
