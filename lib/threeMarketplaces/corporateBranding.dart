import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux2/main.dart';
import 'package:lux2/ItemPage.dart';
import 'product.dart';

class CorporateBrandingState extends State<CorporateBranding> {
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
                              colors: [Color(0xFF3d67ad), Colors.blue]
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
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(
                  'Corporate Branding',
                  style: TextStyle(
                    fontSize: 39,
                    fontFamily: "My",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: List.generate(
                  CategoryList.corporateBranding.products.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemPage(
                                  imagePath: CategoryList
                                      .corporateBranding.products[index].image,
                                  name: CategoryList
                                      .corporateBranding.products[index].name,
                                )));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(
                          CategoryList.corporateBranding.products[index].image,
                          width: 300,
                          height: 200,
                          fit: BoxFit.fill),
                      Container(
                        padding: EdgeInsets.only(top:5),
                        child: Text(
                        CategoryList.corporateBranding.products[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                          fontFamily: "My",
                            // foreground: Paint()
                            //   ..style = PaintingStyle.stroke
                            //   ..strokeWidth = .75
                            //   ..color = Colors.black
                            ),
                      ),),
                      Divider(
                        color: Colors.black,
                      ),
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

class CorporateBranding extends StatefulWidget {
  @override
  CorporateBrandingState createState() => CorporateBrandingState();
}
