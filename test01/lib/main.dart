// ignore_for_file: prefer_final_fields, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _que = [
    {
      'questionText': 'What\'s your favourite COLOUR?',
      'options': [
        'Black',
        'Red',
        'Green',
        'White',
        'Yellow',
        'Orange',
        'Pink',
        'Blue'
      ],
    },
    {
      'questionText': 'What\'s your favourite ANIMAL?',
      'options': ['Rabbit', 'Dog', 'Cat', 'Lion', 'Tiger', 'Elephant', 'Cow'],
    },
    {
      'questionText': 'What\'s your favourite FOOD?',
      'options': ['Samosa', 'Noodles', 'Vada_Pav', 'Dhokla', 'Bhakarvadi'],
    },
    {
      'questionText': 'What\'s your favourite actor?',
      'options': [
        'Yashraj',
        'kartik aryan',
        'SRK',
        'Salman Khan',
        'Ayushman',
        'tiger shroff'
      ]
    },
    {
      'questionText': 'What\'s your favourite ipl team?',
      'options': [
        'CSK',
        'RCB',
        'MI',
        'GT',
        'LSG',
        'SRH',
        'DC',
        'PK',
        'RR',
        'KKR'
      ]
    },
    {
      'questionText': 'What\'s your favourite Brand?',
      'options': ['Puma', 'adidas', 'Nike', 'Reebok', 'Under Armour'],
    },
    {
      'questionText': 'What\'s your favourite Company(Laptops)?',
      'options': [
        'Acer',
        'Asus',
        'Lenevo',
        'hp',
        'Dell',
        'Apple',
        'Chromebook'
      ],
    }
  ];

  var _questionCounter = 0;

  void _answerQuestion() {
    setState(() {
      _questionCounter = _questionCounter + 1;
    });
    print(_questionCounter);
    if (_questionCounter < _que.length) {
      print("We have more questions!!!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 7, 2, 24),
          child: const Text('Yashraj_Kadam, All rights reserved',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  fontSize: 9),
              textAlign: TextAlign.center),
        ),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Quiz App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () {
                _answerQuestion();
              },
            ),
          ],
          backgroundColor: Color.fromARGB(255, 91, 34, 125),
          shape: const BeveledRectangleBorder(
              side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0), width: 0.50)),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Yashraj Sanjay Kadam'),
                accountEmail: Text('kadamyashraj2004@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/xyz.jpg'),
                ),
                decoration: BoxDecoration(
                  // color: Colors.green,
                  image: DecorationImage(
                    image: AssetImage('images/abc.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text('Sign in'),
              ),
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.event),
                title: Text('Events'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sign out'),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 249, 232, 239),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/abc.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: _questionCounter < _que.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionCounter: _questionCounter,
                  que: _que)
              : const Result(),
        ),
      ),
    );
  }
}
