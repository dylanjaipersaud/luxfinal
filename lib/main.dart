import 'package:flutter/material.dart';
import 'package:lux2/ItemPage.dart';
import 'package:lux2/aboutUsPage.dart';
import 'package:lux2/UserProfile.dart';
import 'package:lux2/marketplaceTrending.dart/marketMain.dart';
import 'package:lux2/splashPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Lux Designs',
      home: SplashPage(),
    );
  }
}

String currentPage = 'Shop';

BottomAppBar bottomNaVBar(BuildContext context) {
  return BottomAppBar(
    color: Colors.transparent,
    elevation: 0,
    shape: CircularNotchedRectangle(),
    child: Container(
      color: Colors.transparent,
      height: 42.0,
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.store,
                  color: currentPage == 'Shop' ? Color(0xFF3d67ad) : 
                  Colors.grey,
                ),
                Text(
                  'Shop',
                  style: TextStyle(
                    color: currentPage == 'Shop' ? Color(0xFF3d67ad) :
                     Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            onTap: () {
              if(currentPage != 'Shop'){
                currentPage = 'Shop';
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MarketPlace()));
              }
            },
          ),
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  color: currentPage == 'Profile' ? Color(0xFF3d67ad) : Colors.grey,
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: currentPage == 'Profile' ? Color(0xFF3d67ad) : Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            onTap: () {
              if(currentPage != 'Profile'){
                currentPage = 'Profile';
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => UserProfile()));
              }
            },
          ),
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.info,
                  color: currentPage == 'About Us' ? Color(0xFF3d67ad) 
                  : Colors.grey,
                ),
                Text(
                  'About Us',
                  style: TextStyle(
                    color: currentPage == 'About Us' ? Color(0xFF3d67ad) : Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            onTap: () {
              if(currentPage != 'About Us'){
                currentPage = 'About Us';
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => AboutUsPage()));
              }
            },
          ),
        ],
      ),
    ),
  );
}
