import 'package:flutter/material.dart';
import 'package:lux2/main.dart';
import 'package:lux2/ordersPage.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  Address address = Address('1600 Pennsylvania Ave NW', 'Oval Office',
      'Washington D.C.', 'MD', '20500');
  String email = 'example@gmail.com';
  CreditCard creditCard = CreditCard('0123 4567 8910 1112');

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        
        Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/LuxSplashPage.png",
                        ),
                        fit: BoxFit.fill,
                        )
                      ),
                    ),
        Scaffold(
            bottomNavigationBar: bottomNaVBar(context),
            backgroundColor: Colors.transparent,
            body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                
                Column(
                  children: <Widget>[
                    
                    Container(
                      height: (MediaQuery.of(context).size.height * 0.4),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Color(0xFF3d67ad), Colors.blue]
                                  ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            //spreadRadius: -3,
                            color: Colors.blue[300],
                            blurRadius: 30.0,
                            offset: Offset(0.0, 22.0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
                                  child: CircularPercentIndicator(
                                    radius: 200.0,
                                    lineWidth: 15.0,
                                    percent: 0.67,
                                    progressColor: Color(0xFFf6c197),
                                    center: Container(
                                      height: 150.0,
                                      width: 150.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/acc.png')),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          'Your Name',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Points: ',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              child: Text(
                                            '67',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Orders()));
                            },
                            child: Container(
                              height: 40.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                border: Border.all(width: 2.0, color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Center(
                                child: Text(
                                  'View Order History',
                                  style: TextStyle(
                                      fontSize: 15.0, fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    ListTile(
                      leading: Icon(Icons.email,color: Colors.white),
                      title: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        
                        'example@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.edit,
                        color: Colors.white),
                        onPressed: () {
                          TextEditingController emailController =
                              TextEditingController();
                          emailController.text = email;

                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Edit Email'),
                                  content: Container(
                                    height: 100.0,
                                    child: Column(
                                      children: <Widget>[
                                        TextFormField(
                                          controller: emailController,
                                          decoration:
                                              InputDecoration(labelText: 'Email'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    FlatButton(
                                      child: Text('Change'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.payment,color: Colors.white),
                      title: Text(
                        'Payment Info',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Mastercard: ' + creditCard.obscureNum(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.edit,color: Colors.white),
                        onPressed: () {
                          TextEditingController creditCardController =
                              TextEditingController();
                          creditCardController.text = creditCard.cardNo;

                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Edit Card Info'),
                                  content: Container(
                                    height: 200.0,
                                    child: Column(
                                      children: <Widget>[
                                        TextFormField(
                                          controller: creditCardController,
                                          decoration: InputDecoration(
                                              labelText: 'Card No.'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    FlatButton(
                                      child: Text('Change'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.local_shipping,color: Colors.white),
                      title: Text(
                        'Shipping Info',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        address.toString().substring(
                                0,
                                address.toString().length > 30
                                    ? 30
                                    : address.toString().length + 1) +
                            ('...'),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.edit),
                        color: Colors.white,
                        onPressed: () {
                          TextEditingController addressOneController =
                              TextEditingController();
                          addressOneController.text = address.addressOne;
                          TextEditingController addressTwoController =
                              TextEditingController();
                          addressTwoController.text = address.addressTwo;
                          TextEditingController cityController =
                              TextEditingController();
                          cityController.text = address.city;
                          TextEditingController stateController =
                              TextEditingController();
                          stateController.text = address.state;
                          TextEditingController zipController =
                              TextEditingController();
                          zipController.text = address.zip;

                          String addressOne, addressTwo, city, state, zip;

                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Edit Address'),
                                  content: Form(
                                    child: Container(
                                      height: 300.0,
                                      child: Column(
                                        children: <Widget>[
                                          TextFormField(
                                            controller: addressOneController,
                                            decoration: InputDecoration(
                                                labelText: 'Address 1'),
                                            onChanged: (value) {
                                              addressOne = value;
                                              print(addressOne);
                                            },
                                          ),
                                          TextFormField(
                                            controller: addressTwoController,
                                            decoration: InputDecoration(
                                                labelText: 'Address 2'),
                                            onChanged: (value) {
                                              addressTwo = value;
                                              print(addressTwo);
                                            },
                                          ),
                                          TextFormField(
                                            controller: cityController,
                                            decoration:
                                                InputDecoration(labelText: 'City'),
                                            onChanged: (value) {
                                              city = value;
                                              print(city);
                                            },
                                          ),
                                          TextFormField(
                                            controller: stateController,
                                            decoration:
                                                InputDecoration(labelText: 'State'),
                                            onChanged: (value) {
                                              state = value;
                                              print(state);
                                            },
                                          ),
                                          TextFormField(
                                            controller: zipController,
                                            decoration: InputDecoration(
                                                labelText: 'Zip Code'),
                                            onChanged: (value) {
                                              zip = value;
                                              print(zip);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    FlatButton(
                                      child: Text('Commit Changes'),
                                      onPressed: () {
                                        // setState(() {
                                        //   address = Address(
                                        //       addressOne, addressTwo, city, state, zip);
                                        // });
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}

class Address {
  String addressOne, addressTwo, city, state, zip;

  Address(this.addressOne, this.addressTwo, this.city, this.state, this.zip);

  @override
  toString() {
    return addressOne +
        ' ' +
        city +
        ', ' +
        state +
        ' ' +
        zip +
        ', ' +
        addressTwo;
  }
}

class CreditCard {
  String cardNo;

  CreditCard(this.cardNo);

  String obscureNum() {
    return '**** **** **** ' + cardNo.substring(15);
  }
}
