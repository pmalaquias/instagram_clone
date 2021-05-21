import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_clone/user.dart';

var user = User('Gandalf the Grey',
    'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg');

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double get randHeight => Random().nextInt(100).toDouble();

  List<Widget> _randomChildren;

  // Children with random heights - You can build your widgets of unknown heights here
  // I'm just passing the context in case if any widgets built here needs  access to context based data like Theme or MediaQuery
  List<Widget> _randomHeightWidgets(BuildContext context) {
    _randomChildren ??= List.generate(1, (index) {
      final height = randHeight.clamp(
        50.0,
        MediaQuery.of(context)
            .size
            .width, // simply using MediaQuery to demonstrate usage of context
      );
      return Container(
        child: profileInfo(),
      );
    });

    return _randomChildren;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      endDrawer: myDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            // allows you to build a list of elements that would be scrolled away till the body reached the top
            headerSliverBuilder: (context, _) {
              return [
                SliverList(
                  delegate: SliverChildListDelegate(
                    _randomHeightWidgets(context),
                  ),
                ),
              ];
            },
            // You tab view goes here
            body: Column(
              children: <Widget>[
                TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_view),
                    ),
                    Tab(
                      icon: Icon(Icons.view_list),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      GridView.count(
                        padding: EdgeInsets.zero,
                        crossAxisCount: 3,
                        children: Colors.primaries.map((color) {
                          return Container(color: color, height: 150.0);
                        }).toList(),
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        children: Colors.primaries.map((color) {
                          return Container(color: color, height: 150.0);
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget profileInfo() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
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
                SizedBox(
                  height: 8,
                ),
                Text(
                  '${user.name}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Post'),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Followers'),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Following'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Drawer myDrawer() {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            ListTile(
              onTap: () {},
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
              onTap: () {},
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
    );
  }
}
