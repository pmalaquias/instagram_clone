import 'dart:io';

import 'package:flutter/material.dart';

class SharePost extends StatefulWidget {
  SharePost({this.path});

  File path;

  @override
  _SharePostState createState() => _SharePostState(path);
}

class _SharePostState extends State<SharePost> {
  File path;

  _SharePostState(this.path);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.file(
                  path,
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Write a caption...',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Salvar',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
