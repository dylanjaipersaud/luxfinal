import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderItem{
  String imagePath, name, status;
  double price;
  SimpleDate deliveredDate;

  OrderItem(this.imagePath, this.name, this.status, this.price, this.deliveredDate);
}

class SimpleDate{
  String year, month, day;

  SimpleDate(this.month, this.day, this.year);

  @override
  String toString() {
    return '$month $day, $year';
  }
}

final List<OrderItem> orders = [
  OrderItem('assets/images/key_chain.jpg', 'Keychain - Plastic', 'Processing', 500.00, SimpleDate('Jan', '30', '2020')),
];

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
            color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text('ORDERS', style: TextStyle(color: Colors.orange)),
          backgroundColor: Colors.white.withOpacity(1),
        ),
        body: ListView.builder(
            itemCount: orders.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                      child: SizedBox(
                          height: 120,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AspectRatio(
                                  aspectRatio: 1.0,
                                  child: ClipRRect(
                                    borderRadius:
                                    BorderRadius.circular(17.0),
                                    child: Image.asset(orders[index].imagePath,
                                    fit: BoxFit.contain,),
                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 10.0)
                              ),
                            ],
                          )
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          orders[index].name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                        Text("Status: " + orders[index].status,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 15.5,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 13),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '\$${orders[index].price}',
                              style: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              'Estimated Delivery: \n' + orders[index].deliveredDate.toString(),
                              style: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
        )
    );
  }
}