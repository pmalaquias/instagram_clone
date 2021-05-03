import 'package:flutter/material.dart';
import 'package:instagram_clone/PostCard.dart';
import 'package:instagram_clone/home.dart';
import 'package:instagram_clone/dashboard.dart';

void main() {
  runApp(Insta());
}

class Insta extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.grey,
        primarySwatch: Colors.grey,
      ),
      home: Home(),
    );
  }
}


