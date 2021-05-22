import 'dart:math';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:instagram_clone/PostCard.dart';
import 'package:instagram_clone/user.dart';

import 'Post.dart';

var user = User('Gandalf the Grey',
    'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg');

List<Post> postList = [
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2020/01/21/16/26/yorkshire-terrier-4783327__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2021/05/15/14/58/pied-kingfisher-6255945__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2017/09/29/13/36/river-2799103__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2021/01/21/15/54/books-5937716_1280.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2021/04/17/06/59/coffee-beans-6185161__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2020/08/17/13/24/flower-5495384__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2020/03/27/15/33/norway-4973935__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2020/02/05/06/24/cat-4820202__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2020/04/26/22/26/tulips-5097405__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2020/11/19/20/04/puffin-5759684__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2021/04/17/06/57/colour-6185159__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2018/11/19/03/27/nature-3824498__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2021/01/08/06/32/cafe-5899078__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2020/11/26/20/20/barn-owl-5780100__480.jpg'),
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2021/03/16/21/46/pears-6101067__480.jpg'),
];

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
                          children: postList
                              .map((e) => Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Image.network(
                                      e.imgPost,
                                      height: 150,
                                      width: 150,
                                    ),
                                  ))
                              .toList()
                          /*Colors.primaries.map((color) {
                          return Container(color: color, height: 150.0);
                        }).toList(),*/
                          ),
                      ListView(
                          padding: EdgeInsets.zero,
                          children: postList
                              .map((e) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Column(
                                      children: [
                                        PostCard(
                                          post: e,
                                        )
                                      ],
                                    ),
                                  ))
                              .toList()
                          /* Colors.primaries.map((color) {
                          return Container(color: color, height: 150.0);
                        }).toList(),*/
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
                    postList.length != 0? '${postList.length}': 0 ,
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
        Divider(
          color: Colors.blueGrey,
        )
      ],
    );
  }

  Drawer myDrawer() {
    return Drawer(
      child: GlassmorphicContainer(
        width: 800,
        height: 100,
        borderRadius: 0,
        blur: 10,
        alignment: Alignment.bottomCenter,
        border: 1,
        linearGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFffffff).withOpacity(0.01),
              Color(0xFF333333).withOpacity(0.05),
            ],
            stops: [
              0.1,
              1
            ]),
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFffffff).withOpacity(0.5),
            Color((0xFFFFFFFF)).withOpacity(0.5),
          ],
        ),
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
