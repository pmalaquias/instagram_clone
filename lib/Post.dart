import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post extends StatelessWidget {
  Image img = Image.network(
      'https://cdn.pixabay.com/photo/2021/01/17/02/02/planets-5923806_1280.jpg');

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Image.network(
                      'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png',
                  ),
                ),
                SizedBox(width: 8,),
                Text('Dom Pedro I')
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Image.network(
                'https://cdn.pixabay.com/photo/2021/01/17/02/02/planets-5923806_1280.jpg',
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
