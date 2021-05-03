import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/dashboard.dart';
import 'package:instagram_clone/favorites.dart';
import 'package:instagram_clone/profile.dart';
import 'package:instagram_clone/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int currentTab = 0; //para mudar de pagina

  var pikedFile;
  File _image;
  final picker = ImagePicker();

  // ignore: missing_return
  Future<Widget> imgFromCamera() async {
    await picker
        .getImage(source: ImageSource.camera, imageQuality: 100)
        .then((file) {
      if (file == null) return;

      setState(() {
        //imageProfile = file.path;
      });
    });
  }

  final List<Widget> screens = [
    Dashboard(title: 'Instagram'),
    Search(),
    Container(),
    Favorites(),
    ProfileScreen()
  ]; //listas de paginas

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = Dashboard(title: 'Instagram');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          child: BottomAppBar(
            elevation: 20.0,
            shape: const CircularNotchedRectangle(),
            child: Container(
              height: 60.0,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  itemPage(context, 0, Icons.home_filled, Icons.home_filled,
                      'Home', screens[0]),
                  itemPage(context, 1, Icons.search, Icons.search_outlined,
                      'Pesquisar', screens[1]),
                  itemPage(context, 2, Icons.add_circle,
                      Icons.add_circle_outline, 'Câmera', screens[2]),
                  itemPage(context, 3, Icons.favorite, Icons.favorite_border,
                      'Perfil', screens[3]),
                  itemPage(context, 4, Icons.person, Icons.person_outline,
                      'Perfil', screens[4]),
                ],
              ),
            ),
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  MaterialButton itemPage(BuildContext context, int index, IconData select,
      IconData notSelect, String label, Widget screen) {
    if (index == 2) {
      return MaterialButton(
        minWidth: 40,
        onPressed: () async {
          pikedFile = await picker.getImage(source: ImageSource.camera);

          setState(() {
            if (pikedFile != null) {
              _image = File(pikedFile.path);
            } else {
              print('No image selected.');
            }
          });

          setState(() {
            currentTab = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              currentTab == index ? select : select,
              color: currentTab == index
                  ? Colors.black
                  : Theme.of(context).primaryColor,
            ),
            /*Visibility(
              visible: currentTab == index ? true : false,
              child: Text(
                label,
                style: TextStyle(
                  color: currentTab == index
                      ? Theme.of(context).primaryColor
                      : Colors.black,
                ),
              ),
            ),*/
          ],
        ),
      );
    } else {
      return MaterialButton(
        minWidth: 40,
        onPressed: () {
          setState(() {
            currentScreen =
                screen; // if user taps on this dashboard tab will be active
            currentTab = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              currentTab == index ? select : select,
              color: currentTab == index
                  ? Colors.black
                  : Theme.of(context).primaryColor,
            ),
            /*Visibility(
              visible: currentTab == index ? true : false,
              child: Text(
                label,
                style: TextStyle(
                  color: currentTab == index
                      ? Theme.of(context).primaryColor
                      : Colors.black,
                ),
              ),
            ),*/
          ],
        ),
      );
    }
  }
}
