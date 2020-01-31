import 'package:flutter/material.dart';
import 'package:lux2/threeMarketplaces/corporateBranding.dart';
import 'package:lux2/threeMarketplaces/corporateSignage.dart';
import 'package:lux2/threeMarketplaces/lifestyleNovelty.dart';
import '../main.dart';
import 'data.dart';
import 'dart:math';

class MarketPlace extends StatefulWidget {
  @override
  _MarketPlaceState createState() => new _MarketPlaceState();
}

var cardAspectRatio = 13.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _MarketPlaceState extends State<MarketPlace> {
  @override
  void initState() {
    super.initState();
  }

  var currentPage = images.length - 1.0;

  final List name = ["Product name"];
  final List image = ["assets/images/example.jpg"];

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Container(
      decoration: BoxDecoration(
        //color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assets/images/LuxSplashPage.png"),
            fit: BoxFit.fill),
      ),
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          bottomNavigationBar: bottomNaVBar(context),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF3d67ad), Colors.blue]
                              ),
                    //color: Color(0xFF3d67ad),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        topLeft: Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent,
                        blurRadius: 30,
                        offset: Offset(13, 13),
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Text("Trending",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 46.0,
                                    letterSpacing: 1.0,
                                    fontFamily: 'My',
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          CardScrollWidget(currentPage),
                          Positioned.fill(
                            child: PageView.builder(
                              itemCount: images.length,
                              controller: controller,
                              reverse: true,
                              itemBuilder: (context, index) {
                                return Container();
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text("Shopping",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 46.0,
                            letterSpacing: 1.0,
                            fontFamily: "My"
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LifestyleNovelty()));
                      },
                      child: Container(
                        height: 180,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF3d67ad),
                               Colors.blue]
                              ),
                          //color: Color(0xFF3d67ad),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(63.0),
                            bottomRight: Radius.circular(63.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent,
                              blurRadius: 20,
                              offset: Offset(-10, 10), //(-3, 13),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  "assets/images/keychain.jpg",
                                  fit: BoxFit.cover,
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 15),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Lifestyle \nNovelty",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    fontFamily: "My"
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CorporateSignage()));
                          },
                          child: Container(
                            height: 180,
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF3d67ad), Colors.blue]
                              ),
                              //color: Color(0xFF3d67ad),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(63.0),
                                bottomLeft: Radius.circular(63.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueAccent,
                                  blurRadius: 20,
                                  offset: Offset(10, 10),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Corporate\n Signage",
                                    style: TextStyle(
                                      color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    fontFamily: "My"
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      "assets/images/nametags.jpg",
                                      fit: BoxFit.cover,
                                      width: 150,
                                      height: 150,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CorporateBranding()));
                      },
                      child: Container(
                        height: 180,
                        margin: EdgeInsets.only(right: 20),
                        padding: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF3d67ad), Colors.blue]
                              ),
                          //color: Color(0xFF3d67ad),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(63.0),
                            bottomRight: Radius.circular(63.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent,
                              blurRadius: 20,
                              offset: Offset(-10, 10),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  "assets/images/iphone_case.jpg",
                                  fit: BoxFit.cover,
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 15),
                              child: Text(
                                "Corporate\n Branding",
                                style: TextStyle(
                                  color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    fontFamily: "My",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}

class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < images.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(16.0),
              //   topRight: Radius.circular(16.0),
              // ),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Center(
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset(images[i], fit: BoxFit.cover),
                        // Align(
                        //   alignment: Alignment.bottomCenter,
                        //   child: Column(
                        //     mainAxisSize: MainAxisSize.min,
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: <Widget>[
                        //       Container(
                        //         padding: EdgeInsets.symmetric(
                        //             horizontal: 16.0, vertical: 8.0),
                        //         child: Text(title[i],
                        //             style: TextStyle(
                        //               color: Colors.black,
                        //               shadows: [
                        //                 Shadow(
                        //                   color: Colors.white70,
                        //                   blurRadius: 4,
                        //                 )
                        //               ],
                        //               fontSize: 25.0,
                        //             )),
                        //       ),
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}
