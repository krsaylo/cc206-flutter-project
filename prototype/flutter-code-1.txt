import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          flexibleSpace: Container(
            color: Colors.red,
            child: Column(
              children: [
                Text('Edited By:'),
                Text('John Carlo Combalicer'),
                Text('Kenette Roeven Saylo'),
              ],
            ),
          ),
        ),
        body: Image.network(
          'https://www.nicepng.com/png/detail/29-298330_15-dio-face-png-for-free-download-on.png',
          width: 180,
          height: 180,
        ),
      ),
    );
  }
}
