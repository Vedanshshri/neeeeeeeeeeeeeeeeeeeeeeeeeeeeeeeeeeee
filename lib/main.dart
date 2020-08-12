// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

//import 'dart:html';

import 'package:flutter/material.dart';

import 'dockerpage/dockerpage.dart';
import 'kubernatespage/kubepage.dart';
import 'navdrawer/dockerdrawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: Scaffold(
      drawer: Navdrawer(),
      appBar: AppBar(
        title: Text('DOKU'),
        actions: <Widget>[Icon(Icons.info), Icon(Icons.settings)],
      ),
      body: MyBody(), // crearting
    ),
  ));
}

//main page for selection of docker and kubernetes

// ignore: camel_case_types
class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade300),
            // height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            //color: Colors.blue.shade300,
            child: Image.network(
                'https://i1.wp.com/blog.knoldus.com/wp-content/uploads/2018/04/docker.png?fit=269%2C201&ssl=1'),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => docker()),
            );
          },
        ),
        Container(
          //height: MediaQuery.of(context).size.height * 0.5,
          child: FlatButton(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12),
              // color: Colors.black12,
              height: MediaQuery.of(context).size.height * 0.44,
              width: double.infinity,
              child: Image.network(
                  'https://kubernetes.io/images/kubernetes-horizontal-color.png'),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => kubernates()),
              );
            },
          ),
        ),
      ],
    );
  }
}
