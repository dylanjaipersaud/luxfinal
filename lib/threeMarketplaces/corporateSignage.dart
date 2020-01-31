import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'product.dart';
import 'package:lux2/ItemPage.dart';

class CorporateSignageState extends State<CorporateSignage> {
  get onTap => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Corporate Signage',
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
                  CategoryList.corporateSignage.products.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemPage(
                                  imagePath: CategoryList
                                      .corporateSignage.products[index].image,
                                  name: CategoryList
                                      .corporateSignage.products[index].name,
                                )));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(
                          CategoryList.corporateSignage.products[index].image,
                          width: 300,
                          height: 200,
                          fit: BoxFit.fill),
                      Text(
                        CategoryList.corporateSignage.products[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = .75
                              ..color = Colors.black),
                      ),
                      Text(
                        CategoryList.corporateSignage.products[index].price
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

class CorporateSignage extends StatefulWidget {
  @override
  CorporateSignageState createState() => CorporateSignageState();
}
