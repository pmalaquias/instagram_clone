import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/Post.dart';

 // img1 ='https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'

class PostCard extends StatelessWidget {

  Post post = Post();

  PostCard({this.post});

  Image img = Image.network(
      'https://cdn.pixabay.com/photo/2021/01/17/02/02/planets-5923806_1280.jpg');

  @override
  Widget build(BuildContext context) {

    print(post);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
               Container(
                 height: 30,
                 width: 30,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   image: DecorationImage(
                     image: NetworkImage(post.imgUser),
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
                SizedBox(width: 8,),
                Text('${post.nameUser}')
              ],
            ),
            SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Image.network(
                post.imgPost,
              ),
            ),
            Row(
              children: [
                IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
                IconButton(icon: Icon(Icons.comment_rounded), onPressed: () {}),
                IconButton(icon: Icon(Icons.send_rounded), onPressed: () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Cometários', style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
