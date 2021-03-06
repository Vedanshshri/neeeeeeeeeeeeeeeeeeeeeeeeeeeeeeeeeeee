import 'package:doku1/functions/function.dart';
import 'package:flutter/material.dart';

class kubernatesmoniter extends StatefulWidget {
  @override
  _kubernatesmoniterState createState() => _kubernatesmoniterState();
}

class _kubernatesmoniterState extends State<kubernatesmoniter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Moniter Docker"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.220725,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.044145,
                    width: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Center(
                              child: Text(
                            "Pods",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          )),
                          height: MediaQuery.of(context).size.height * 0.044145,
                          width: MediaQuery.of(context).size.width * 0.80,
                          color: Colors.pink,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  /*SingleChildScrollView(
                    child:*/
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17658,
                    width: double.infinity,
                    color: Colors.yellow,
                    child: Text(
                        """anythingnvafvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
                      vvvvv
                      vvvvvvvvvv
                      vvvvvvvv
                      vvvvv
                      v
                      cvc
                      c
                      c
                      c
                      c
                      c
                      c
                      c
                      c
                      cc
                      c
                      c
                      c
                      vvvvv
                      vvvvvvvvvvvvvvv
                      vvvvvvvvvvvv"""),
                  ),
                  /*controller: _mycontroller,
                  ),*/
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.220725,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.044145,
                    width: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Center(
                              child: Text(
                            "Deployments",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          )),
                          height: MediaQuery.of(context).size.height * 0.044145,
                          width: MediaQuery.of(context).size.width * 0.80,
                          color: Colors.pink,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.220725,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.044145,
                    width: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Center(
                              child: Text(
                            "NameSpaces",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          )),
                          height: MediaQuery.of(context).size.height * 0.044145,
                          width: MediaQuery.of(context).size.width * 0.80,
                          color: Colors.pink,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.220725,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.044145,
                    width: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Center(
                              child: Text(
                            "Presistant Volumes",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          )),
                          height: MediaQuery.of(context).size.height * 0.044145,
                          width: MediaQuery.of(context).size.width * 0.80,
                          color: Colors.pink,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
