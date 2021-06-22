import 'package:flutter/material.dart';

const String urlPhoto =
    'https://cdn.pixabay.com/photo/2020/04/20/20/47/drip-5069808_1280.jpg';

class Post {
  String imgUser =
      'https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916__480.png';

  String get getImgUser => imgUser;

  set setImgUser(String imgUser) {
    this.imgUser = imgUser;
  }

  String nameUser = 'Your name';

  String get getNameUser => nameUser;

  set setNameUser(String nameUser) {
    this.nameUser = nameUser;
  }

  String imgPost =
      'https://cdn.pixabay.com/photo/2020/04/20/20/47/drip-5069808_1280.jpg';

  String get getImgPost => imgPost;

  set setImgPost(String imgPost) {
    this.imgPost = imgPost;
  }

   int likes = 0;

  @override
  String toString() {
    return 'Post{imgUser: $imgUser, nameUser: $nameUser, imgPost: $imgPost, likes: $likes}';
  }

  Post({
    this.imgUser,
    this.nameUser,
    this.imgPost,
    this.likes,
  });
}
