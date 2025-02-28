// ignore_for_file: prefer_const_constructors, avoid_print, must_be_immutable
import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CC 206 Exercise 1'),
        centerTitle: true,
        backgroundColor: Color(0xff398ae5),
        titleTextStyle: TextStyle(
          fontSize: 30.0,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: const [Color(0xff73aef4), Color(0xff398ae5)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.network(
                'https://i.redd.it/km7dagfbeuy51.png',
                width: 180,
                height: 180,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 7))
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff6ca8f1)),
                margin: EdgeInsets.fromLTRB(35, 1, 35, 20),
                padding: EdgeInsets.fromLTRB(50, 2, 50, 2),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: userController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefix: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.8)),
                      hintText: ('Enter Email')),
                )),
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 7))
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff6ca8f1)),
                margin: EdgeInsets.fromLTRB(35, 1, 35, 10),
                padding: EdgeInsets.fromLTRB(50, 2, 50, 2),
                child: TextField(
                  onChanged: (text) {
                    print('object: $text');
                  },
                  controller: passController,
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefix: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.8)),
                      hintText: ('Enter Password')),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(80, 20, 80, 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print('User: ' +
                      userController.text +
                      ', Password: ' +
                      passController.text +
                      ', is trying to login'); //prints on console
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(
              'Edited by:'
              '\n\nJohn Carlo Combalicer'
              '\nKenette Roeven Saylo\n\n\n\n',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
