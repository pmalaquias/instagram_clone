import 'package:flutter/material.dart';
import 'package:instagram_clone/user.dart';

var user = User('John da Argentina', 'https://cdn.pixabay.com/photo/2016/05/23/23/32/human-1411499__480.jpg');

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
          children: [
            ListTile(
              onTap: (){},
              title: Row(
                children: [
                  Icon(Icons.account_circle),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: (){},
              title: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Setting',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(user.imgProfileUser),
                    fit: BoxFit.cover,
                  ),
                ),

              ),
              Text('${user.name}'),
            ],
          ),
        ),
      ),
      //drawer: Drawer() ,
    );
  }
}
