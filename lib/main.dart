import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        // margin:  EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 153, 217, 234)        
          ),

        child: Column(    
          mainAxisAlignment: MainAxisAlignment.center,   
          children: [
            Container(
              padding: EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1, color: Colors.white),
              // ),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    child: Image.asset(
                      'images/avt.png',
                      fit: BoxFit.cover
                    ),
                    // Column(children: [
                    //   CircleAvatar(
                    //     backgroundColor: Color.fromARGB(255, 153, 217, 234),
                    //     radius: 100,
                    //     backgroundImage: NetworkImage(""),
                    //   )
                    // ]),
                  ),

                  Container(
                    margin: EdgeInsets.all(25),
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 35, bottom: 35, left: 20, right: 20),
                          color: Colors.white,
                          // margin: EdgeInsets.all(5),
                          child: Text(
                            "Học cùng 3 kon 0",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ]
                    )
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 150),
                    child: Column(children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: Colors.black, width: 3)
                      ),
                    onPressed: () => {},
                    child: const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 15, left: 65, right: 65),
                    child: Text('Play', style: const TextStyle( color: Colors.black, fontWeight: FontWeight.bold)))),
                    ]),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: Colors.black, width: 3)
                      ),
                    onPressed: () => {},
                    child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Setting', style: const TextStyle( color: Colors.black, fontWeight: FontWeight.bold)))),
                    ]),
                  ),
                ]),)
                ],
              ),
            ),
    );
  }
}