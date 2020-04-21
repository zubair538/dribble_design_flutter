import 'package:dribble_design/tile/TileBottom.dart';
import 'package:dribble_design/tile/TileWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'SecondActivity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin:
                                EdgeInsets.only(top: 30, left: 10, right: 10),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images/zubair.jpg"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFEAEFFF),
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.bell,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.only(left: 7),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          FontAwesomeIcons.checkCircle,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Saif Uddin",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TileWidget(),
                    TileWidget(
                      title: "Deposit Account",
                      text: "3232.32",
                      color: 0xFF456EFE,
                      icon: FontAwesomeIcons.donate,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TileWidget(
                      title: "Loan Account",
                      text: "34354.00",
                      icon: FontAwesomeIcons.uber,
                      color: 0xFFFF8976,
                    ),
                    TileWidget(
                      title: "Credit Account",
                      text: "115324.00",
                      icon: FontAwesomeIcons.creditCard,
                      color: 0xFFFCB73E,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "Quick Actions",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color(0xFFEAEFFF),
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(right: 20),
                      child: Center(
                        child: Container(
                          child: Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: TileBottom(
                        text: "Make a \nPayment",
                        icon: FontAwesomeIcons.shoppingBag,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondActiivity()),
                          );
                        },
                        child: TileBottom(
                          text: "Make a \nPayment",
                          icon: FontAwesomeIcons.recycle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
