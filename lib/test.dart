// InstaProfilePage
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_clone/profile.dart';

class InstaProfilePage extends StatefulWidget {
  @override
  _InstaProfilePageState createState() => _InstaProfilePageState();
}

class _InstaProfilePageState extends State<InstaProfilePage> {
  double get randHeight => Random().nextInt(100).toDouble();

  List<Widget> _randomChildren;

  // Children with random heights - You can build your widgets of unknown heights here
  // I'm just passing the context in case if any widgets built here needs  access to context based data like Theme or MediaQuery
  List<Widget> _randomHeightWidgets(BuildContext context) {
    _randomChildren ??= List.generate(1, (index) {
      final height = randHeight.clamp(
        50.0,
        MediaQuery.of(context).size.width, // simply using MediaQuery to demonstrate usage of context
      );
      return Container(
        child: Row(
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
                Text('${user.name}',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
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
      );
    });

    return _randomChildren;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Persistent AppBar that never scrolls
      appBar: AppBar(
        title: Text('AppBar'),
        elevation: 0.0,
      ),
      body: DefaultTabController(
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
                  Tab(text: 'A'),
                  Tab(text: 'B'),
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
    );
  }
}