import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWeb extends StatelessWidget {
  const ProfileWeb({Key key}) : super(key: key);

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
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            tooltip: 'Profile',
          ),
          VerticalDivider(width: 16)
        ],
      ),
      body: Container(),
    );
  }
}
