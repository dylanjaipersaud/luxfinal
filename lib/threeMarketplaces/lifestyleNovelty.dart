import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux2/ItemPage.dart';
import 'package:lux2/main.dart';
import 'product.dart';

class LifestyleNoveltyState extends State<LifestyleNovelty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNaVBar(context),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Color.fromRGBO(246, 193, 151, 1),
                  Color.fromRGBO(246, 193, 151, 0.8),
                  Color.fromRGBO(246, 193, 151, 0.6),
                  Color.fromRGBO(246, 193, 151, 0.4),
                ],
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment(-1, 0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(
                  'Lifestyle Novelty',
                  style: TextStyle(
                    fontSize: 39,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: List.generate(
                  CategoryList.lifestyleNovelty.products.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemPage(
                                  imagePath: CategoryList
                                      .lifestyleNovelty.products[index].image,
                                  name: CategoryList
                                      .lifestyleNovelty.products[index].name,
                                )));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(
                          CategoryList.lifestyleNovelty.products[index].image,
                          width: 300,
                          height: 200,
                          fit: BoxFit.fill),
                      Text(
                        CategoryList.lifestyleNovelty.products[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = .75
                              ..color = Colors.black),
                      ),
                      Text(
                        CategoryList.lifestyleNovelty.products[index].price
                            .toString(),
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class LifestyleNovelty extends StatefulWidget {
  @override
  LifestyleNoveltyState createState() => LifestyleNoveltyState();
}
