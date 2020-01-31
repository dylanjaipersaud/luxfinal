import 'package:flutter/material.dart';
import 'package:lux2/marketplaceTrending.dart/marketMain.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MarketPlace())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/Luxapptest.png",
               fit: BoxFit.cover,),
          ),
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
