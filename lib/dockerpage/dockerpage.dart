//docker page
// ignore: camel_case_types
import 'package:doku1/functions/function.dart';
import 'package:doku1/moniterpage/dockermoniter.dart';
import 'package:flutter/material.dart';

String os_name;
String os_name_old;
String os_name_new;
String image_name;
String volume_name;
String network_name;

class docker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Docker"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dockermoniter()),
                );
              },
            ),
          ],
        ),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue1 = 'container';
  String dropdownValue1container = 'run';
  String dropdownValue1network = 'create';
  String dropdownValue1volume = 'create';
  String dropdownValue1image = 'pull';
  // String dropdownValue1engine = 'activate';
  //String dropdownValue1builder = 'build';
  //String dropdownValue1context = 'create';
  //String dropdownValue1config = 'create';
  //String dropdownValue1node = 'promote';
  //String dropdownValue1plugin = 'create';
  //String dropdownValue1secret = 'create';
  //String dropdownValue1service = 'create';
  //String dropdownValue1stack = 'deploy';
  //String dropdownValue1swarm = 'init';
  //String dropdownValue1system = 'prune';
  //String dropdownValue1trust= '';
  //PART 2 #######
  // String dropdown

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            //color: Colors.red,
            height: MediaQuery.of(context).size.height * 0.33,
            child: Column(
              children: <Widget>[
                DropdownButton<String>(
                  value: dropdownValue1,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue1 = newValue;
                    });
                  },
                  items: <String>['container', 'image', 'network', 'volume']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                if (dropdownValue1 == 'container')
                  DropdownButton<String>(
                    value: dropdownValue1container,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue1container = newValue;
                      });
                    },
                    items: <String>[
                      'run',
                      'rm',
                      'start',
                      'stop',
                      'restart',
                      'kill',
                      'pause',
                      'unpause',
                      'rename'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'run')
                  TextField(
                    onChanged: (a) {
                      os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'run')
                  TextField(
                    onChanged: (b) {
                      image_name = b;
                    },
                    decoration: InputDecoration(
                        hintText: "Image Name With Version eg. centos:latest"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'rm')
                  TextField(
                    onChanged: (a) {
                      os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'start')
                  TextField(
                    onChanged: (a) {
                      os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'stop')
                  TextField(
                    onChanged: (a) {
                      os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'rename')
                  TextField(
                    onChanged: (a) {
                      os_name_old = a;
                    },
                    decoration:
                        InputDecoration(hintText: "Old Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'rename')
                  TextField(
                    onChanged: (a) {
                      os_name_new = a;
                    },
                    decoration:
                        InputDecoration(hintText: "New Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'restart')
                  TextField(
                    onChanged: (a) {
                      os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'kill')
                  TextField(
                    onChanged: (a) {
                      os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'pause')
                  TextField(
                    onChanged: (a) {
                      os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'container' &&
                    dropdownValue1container == 'unpause')
                  TextField(
                    onChanged: (a) {
                      os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'network')
                  DropdownButton<String>(
                    value: dropdownValue1network,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue1network = newValue;
                      });
                    },
                    items: <String>['create', 'rm']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                if (dropdownValue1 == 'network' &&
                    dropdownValue1network == 'create')
                  TextField(
                    onChanged: (a) {
                      network_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Network"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'network' &&
                    dropdownValue1network == 'rm')
                  TextField(
                    onChanged: (a) {
                      network_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name of Network"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'volume')
                  DropdownButton<String>(
                    value: dropdownValue1volume,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue1volume = newValue;
                      });
                    },
                    items: <String>[
                      'create',
                      'rm',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                if (dropdownValue1 == 'volume' &&
                    dropdownValue1volume == 'create')
                  TextField(
                    onChanged: (a) {
                      volume_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for volume"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'volume' && dropdownValue1volume == 'rm')
                  TextField(
                    onChanged: (a) {
                      volume_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name of volume"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'image')
                  DropdownButton<String>(
                    value: dropdownValue1image,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue1image = newValue;
                      });
                    },
                    items: <String>['pull', 'rm', 'push']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                if (dropdownValue1 == 'image' && dropdownValue1image == 'pull')
                  TextField(
                    onChanged: (a) {
                      image_name = a;
                    },
                    decoration:
                        InputDecoration(hintText: "Name of image to pull"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'image' && dropdownValue1image == 'rm')
                  TextField(
                    onChanged: (a) {
                      image_name = a;
                    },
                    decoration:
                        InputDecoration(hintText: "Name of image to remove"),
                    autocorrect: true,
                  ),
                if (dropdownValue1 == 'image' && dropdownValue1image == 'push')
                  TextField(
                    onChanged: (a) {
                      image_name = a;
                    },
                    decoration: InputDecoration(
                        hintText: "Name of image to push(Proper Name)"),
                    autocorrect: true,
                  ),
              ],
            )),
        Container(
          //color: Colors.yellow,
          child: SizedBox(
            width: 20,
            height: MediaQuery.of(context).size.height * 0.04,
          ),
        ),
        FlatButton(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent),
            height: MediaQuery.of(context).size.height * 0.14,
            //width: 100,
            //color: Colors.lightBlueAccent,
            child: Center(child: Text("submit")),
          ),
          onPressed: F1,
        ),
        Container(
          //color: Colors.green,
          child: SizedBox(
              width: 20, height: MediaQuery.of(context).size.height * 0.04),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.3326,
          width: double.infinity,
          color: Colors.grey.shade300,
          child: Center(child: Text("Output Box Scrollable")),
        )
      ],
    );
  }
}
