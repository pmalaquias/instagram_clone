
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/web/home_web.dart';
import 'package:instagram_clone/home.dart';

void main() {
  if (defaultTargetPlatform == TargetPlatform.android) {
    runApp(Insta());
  } else {
    runApp(InstaWeb());
  }
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
      debugShowCheckedModeBanner: false,
    );
  }
}

class InstaWeb extends StatelessWidget {
  const InstaWeb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: Colors.grey,
        primarySwatch: Colors.grey,
      ),
      home: HomeWeb(),
      debugShowCheckedModeBanner: false,
    );
  }
}
