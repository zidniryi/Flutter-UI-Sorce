import 'package:design/constants.dart';
import 'package:design/screens/favorite/favorite.dart';
import 'package:design/screens/home/home_screen.dart';
import 'package:design/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget _getWidget() {
    if (currentIndex == 1) {
      return FavoriteScreen();
    } else if (currentIndex == 2) {
      return LoginScreen();
    }
    return HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.local_activity),
        backgroundColor: kPrimaryColor,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.center,
        opacity: 0.1,
        hasInk: true,
        inkColor: Colors.black12,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ), //border radius doesn't work when the notch is enabled.
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: kPrimaryColor,
              icon: Icon(
                Icons.home,
                color: Colors.blueGrey,
              ),
              activeIcon: Icon(
                Icons.home,
                color: kPrimaryColor,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: kPrimaryColor,
              icon: Icon(
                Icons.favorite,
                color: Colors.blueGrey,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: kPrimaryColor,
              ),
              title: Text("Favorite")),
          BubbleBottomBarItem(
              backgroundColor: kPrimaryColor,
              icon: Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              activeIcon: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
              title: Text("Users")),
        ],
      ),
    );
  }
}
