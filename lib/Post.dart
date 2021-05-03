import 'package:flutter/material.dart';


const String urlPhoto =
    'https://cdn.pixabay.com/photo/2020/04/20/20/47/drip-5069808_1280.jpg';

class Post{

   String _imgUser = 'https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916__480.png';

  String get imgUser => _imgUser;

  set imgUser(String imgUser) {
    _imgUser = imgUser;
  }
  String _nameUser = 'Your name';

  String get nameUser => _nameUser;

  set nameUser(String nameUser) {
    _nameUser = nameUser;
  }
   String _imgPost = 'https://cdn.pixabay.com/photo/2020/04/20/20/47/drip-5069808_1280.jpg';

  String get imgPost => _imgPost;

  set imgPost(String imgPost) {
    _imgPost = imgPost;
  }
  int _likes = 0;

  int get likes => _likes;

  set likes(int likes) {
    _likes = likes;
  }

  @override
  String toString() {
    return 'Post{imgUser: $imgUser, nameUser: $nameUser, imgPost: $imgPost, likes: $likes}';
  }
}