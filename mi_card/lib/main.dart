// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: SafeArea(
          child: Container(
            color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/arif.jpg'),
                  radius: 50.0,
                ),
                Text(
                  'Arif Hossain',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontSize: 40.0),
                ),
                Text(
                  'WEB AND MOBILE APP DEVELOPER',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade100,
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text('+88 0168 222 1674')),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 35.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text('a1barif2h@gmail.com'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
