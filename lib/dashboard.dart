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

  @override
  Widget build(BuildContext context) {
    post1.setImgPost =
        'https://cdn.pixabay.com/photo/2020/01/21/16/26/yorkshire-terrier-4783327__480.jpg';
    post2.setImgPost =
        'https://cdn.pixabay.com/photo/2017/09/29/13/36/river-2799103__480.jpg';
    post3.setImgPost =
        'https://cdn.pixabay.com/photo/2021/01/21/15/54/books-5937716_1280.jpg';
    post4.setImgPost =
        'https://cdn.pixabay.com/photo/2021/04/17/06/59/coffee-beans-6185161__480.jpg';
    post5.setImgPost =
        'https://cdn.pixabay.com/photo/2020/08/17/13/24/flower-5495384__480.jpg';

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
            .toList(),
      )

          ),
    );
  }
}
