import 'package:flutter/material.dart';

enum Options { setting, account }

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      endDrawer: Drawer(
        child: ListView(

        ),
      ),
      body: Container(),
      //drawer: Drawer() ,
    );
  }
}
