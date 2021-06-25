import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/Post.dart';
import 'package:instagram_clone/PostCard.dart';
import 'package:instagram_clone/web/profile_web.dart';

List<Post> postList = [
  Post(
      nameUser: 'Gandalf the Grey',
      imgUser:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Gandalf600ppx.jpg/255px-Gandalf600ppx.jpg',
      imgPost:
          'https://cdn.pixabay.com/photo/2021/04/24/19/14/lotus-6204849__480.jpg'),
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
          'https://cdn.pixabay.com/photo/2021/01/29/17/17/sky-5961642__480.jpg'),
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
          'https://cdn.pixabay.com/photo/2021/04/26/17/37/germany-6209610__480.jpg'),
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

class HomeWeb extends StatelessWidget {
  const HomeWeb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: GoogleFonts.yellowtail(fontSize: 32),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfileWeb(),
                  ),
                );
              },
              icon: Icon(Icons.person_outline)),
          VerticalDivider(
            width: 16,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 200),
        children: postList
            .map((e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PostCard(
                      post: e,
                    )
                  ],
                ))
            .toList(),
      ),
    );
  }
}
