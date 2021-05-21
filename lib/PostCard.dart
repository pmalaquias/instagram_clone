import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/Post.dart';

// img1 ='https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'

class PostCard extends StatefulWidget {
  Post post = Post();

  PostCard({this.post});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  Image img = Image.network(
      'https://cdn.pixabay.com/photo/2021/01/17/02/02/planets-5923806_1280.jpg');

  Icon iconLike = Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    print(widget.post);

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
                      image: NetworkImage(widget.post.imgUser),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text('${widget.post.nameUser}')
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Material(
              child: InkWell(
                splashColor: Colors.blueGrey,
                onTap: (){print("click");},
                onDoubleTap: (){

                  setState(() {
                    if (iconLike.icon == Icons.favorite_border) {
                      iconLike = Icon(
                        Icons.favorite,
                        color: Colors.red,
                      );
                      widget.post.likes++;
                    } else {
                      iconLike = Icon(Icons.favorite_border);
                      widget.post.likes--;
                    }
                  });
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.network(
                    widget.post.imgPost,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                    icon: iconLike,
                    onPressed: () {
                      setState(() {
                        if (iconLike.icon == Icons.favorite_border) {
                          iconLike = Icon(
                            Icons.favorite,
                            color: Colors.red,
                          );
                          widget.post.likes++;
                        } else {
                          iconLike = Icon(Icons.favorite_border);
                          widget.post.likes--;
                        }
                      });
                    }),
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
                  Text(
                    'Cometários',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
