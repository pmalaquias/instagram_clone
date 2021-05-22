import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/Post.dart';
import 'package:instagram_clone/PostCard.dart';

var post1 = Post();
var post2 = Post();
var post3 = Post();
var post4 = Post();
var post5 = Post();

class Dashboard extends StatefulWidget {
  Dashboard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {

    post1.setImgPost = 'https://cdn.pixabay.com/photo/2020/01/21/16/26/yorkshire-terrier-4783327__480.jpg';
    post2.setImgPost = 'https://cdn.pixabay.com/photo/2017/09/29/13/36/river-2799103__480.jpg';
    post3.setImgPost = 'https://cdn.pixabay.com/photo/2021/01/21/15/54/books-5937716_1280.jpg';
    post4.setImgPost = 'https://cdn.pixabay.com/photo/2021/04/17/06/59/coffee-beans-6185161__480.jpg';
    post5.setImgPost = 'https://cdn.pixabay.com/photo/2020/08/17/13/24/flower-5495384__480.jpg';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.yellowtail(fontSize: 32),
        ),
        actions: [
          IconButton(icon: Icon(Icons.chat), onPressed: () {}),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            PostCard(
              post: post1,
            ),
            PostCard(
              post: post2,
            ),
            PostCard(
              post: post3,
            ),
            PostCard(
              post: post4,
            ),
            PostCard(
              post: post5,
            ),
          ],
        ),
      ),
    );
  }
}
