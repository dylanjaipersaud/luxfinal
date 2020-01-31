import 'package:flutter/material.dart';
import 'package:lux2/main.dart';

class ItemPage extends StatefulWidget {
  final String name, imagePath;

  ItemPage({Key key, @required this.imagePath, @required this.name}) : super(key: key);

  @override
  ItemPageState createState() => ItemPageState();
}

class ItemPageState extends State<ItemPage> {
  List<String> colorStrings = [
    'Choose Your Color',
    'Red',
    'Green',
    'Blue',
    'Purple',
    'Amber',
    'Black',
    'Light Blue',
  ];
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.amber,
    Colors.black,
    Colors.lightBlue,
  ];

  List<String> materials = [
    'Choose Your Material',
    'Metal',
    'Wood',
    'Plastic',
  ];

  List<String> dimensions = [
    'Choose Your Dimensions',
    '10x10x10',
    '20x20x20',
    '30x30x30'
  ];

  String dropdownValueColor;
  String dropdownValueMaterial;
  String dropdownValueDimensions;

  Color defaultWidgetColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    dropdownValueColor = colorStrings[0];
    dropdownValueMaterial = materials[0];
    dropdownValueDimensions = dimensions[0];
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        key: _scaffoldKey,
        bottomNavigationBar: bottomNaVBar(context),
        body: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.38,
                child: Image.asset(
                  widget.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.33,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff302f2e),
                        blurRadius: 15.0,
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(13.0, 0.0, 13.0, 8.0),
                        child: Text(
                          "Circular keychain designed to show company logo",                    
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      
                      //Divider(),
                      ListTile(
                        leading: Text(
                          'Material: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: DropdownButton<String>(
                          value: dropdownValueMaterial,
                          icon: Icon(
                            Icons.arrow_downward,
                            color: dropdownValueColor != colorStrings[0]
                                ? colors[
                                    colorStrings.indexOf(dropdownValueColor) -
                                        1]
                                : defaultWidgetColor,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          underline: Container(
                            height: 2.0,
                            color: dropdownValueColor != colorStrings[0]
                                ? colors[
                                    colorStrings.indexOf(dropdownValueColor) -
                                        1]
                                : defaultWidgetColor,
                          ),
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValueMaterial = newValue;
                            });

                            print(dropdownValueMaterial);
                          },
                          items: materials
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: value != materials[0] &&
                                          dropdownValueColor != colorStrings[0]
                                      ? colors[colorStrings
                                              .indexOf(dropdownValueColor) -
                                          1]
                                      : defaultWidgetColor,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      ListTile(
                        leading: Text(
                          'Color: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "My",
                          ),
                        ),
                        trailing: DropdownButton<String>(
                          value: dropdownValueColor,
                          icon: Icon(
                            Icons.arrow_downward,
                            color: dropdownValueColor != colorStrings[0]
                                ? colors[
                                    colorStrings.indexOf(dropdownValueColor) -
                                        1]
                                : defaultWidgetColor,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          underline: Container(
                            height: 2.0,
                            color: dropdownValueColor != colorStrings[0]
                                ? colors[
                                    colorStrings.indexOf(dropdownValueColor) -
                                        1]
                                : defaultWidgetColor,
                          ),
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValueColor = newValue;
                            });

                            print(colorStrings.indexOf(dropdownValueColor) - 1);
                          },
                          items: colorStrings
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: value != colorStrings[0]
                                  ? Row(
                                      children: <Widget>[
                                        
                                        Padding(
                                          padding: EdgeInsets.only(right: 20.0),
                                          child: Container(
                                            height: 20.0,
                                            width: 20.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: colors[
                                                  colorStrings.indexOf(value) -
                                                      1],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          value,
                                          style: TextStyle(
                                            color: colors[
                                                colorStrings.indexOf(value) -
                                                    1],
                                          ),
                                        ),
                                      ],
                                    )
                                  : Text(
                                      value,
                                      style: TextStyle(
                                        color: defaultWidgetColor,
                                      ),
                                    ),
                            );
                          }).toList(),
                        ),
                      ),
                      ListTile(
                        leading: Text(
                          'Dimensions: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "My",
                          ),
                        ),
                        trailing: DropdownButton<String>(
                          value: dropdownValueDimensions,
                          icon: Icon(
                            Icons.arrow_downward,
                            color: dropdownValueColor != colorStrings[0]
                                ? colors[
                                    colorStrings.indexOf(dropdownValueColor) -
                                        1]
                                : defaultWidgetColor,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          underline: Container(
                            height: 2.0,
                            color: dropdownValueColor != colorStrings[0]
                                ? colors[
                                    colorStrings.indexOf(dropdownValueColor) -
                                        1]
                                : defaultWidgetColor,
                          ),
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValueDimensions = newValue;
                            });

                            print(dropdownValueDimensions);
                          },
                          items: dimensions
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: value != dimensions[0] &&
                                          dropdownValueColor != colorStrings[0]
                                      ? colors[colorStrings
                                              .indexOf(dropdownValueColor) -
                                          1]
                                      : defaultWidgetColor,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Align(
                        alignment: Alignment(1, 0),
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Text(
                            '(Length x Width x Height)',
                            style: TextStyle(
                              fontFamily: "My",
                              color: Color(0xff403f3f),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.05,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      color: dropdownValueColor != colorStrings[0]
                          ? colors[colorStrings.indexOf(dropdownValueColor) - 1]
                          : defaultWidgetColor,
                      child: Text('Place Order',
                      style: TextStyle(
                        fontFamily: "My",
                      ),),
                      onPressed: () {
                        _scaffoldKey..currentState.showSnackBar(SnackBar(
                          content: Text('Keychain Successfully added to Purchases'),
//                          shape: Border(
//                            top: BorderSide9,
//                          ),
                          duration: Duration(seconds: 3),
                        ));
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.03,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
