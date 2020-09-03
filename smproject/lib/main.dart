import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

void sum(yourname, name) {
  print(0x1100);
}

final yourname = TextEditingController();
final name = TextEditingController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      home: new Material(
          child: new Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.white,
              child: new Container(
                child: new Center(
                    child: new Column(children: [
                  new Padding(padding: EdgeInsets.only(top: 90.0)),
                  new Text(
                    '내가 너를, 너가 나를',
                    style: new TextStyle(
                        color: hexToColor("#F79919"), fontSize: 30.0),
                  ),
                  new Padding(padding: EdgeInsets.only(top: 90.0)),
                  new TextFormField(
                    controller: name,
                    decoration: new InputDecoration(
                      labelText: "당신의 이름은",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),

                      //fillColor: Colors.green
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "이름을 다시입력해주세요";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  new TextFormField(
                    controller: yourname,
                    decoration: new InputDecoration(
                      labelText: "상대방의 이름은",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),

                      //fillColor: Colors.green
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "이름을 다시입력해주세요";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    child: RaisedButton(
                      child: Text('결과를 확인해주세요', style: TextStyle(fontSize: 24)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Secondpage()),
                        );
                      },
                      color: Colors.green,
                      textColor: Colors.white,
                    ),
                  ),
                ])),
              ))),
    );
  }
}

// ignore: must_be_immutable
class Secondpage extends StatelessWidget {
  var number = Random().nextInt(100) + 1;
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

    return MaterialApp(
      home: new Material(
          child: new Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.white,
              child: new Container(
                child: new Center(
                    child: new Column(children: [
                  new Padding(padding: EdgeInsets.only(top: 90.0)),
                  new Text(
                    '내가 너를, 너가 나를',
                    style: new TextStyle(
                        color: hexToColor("#F79919"), fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  new Text(
                    name.text + ' ♥ ' + yourname.text,
                    style: new TextStyle(
                        color: hexToColor("#3784B6"), fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  new Text(
                    number.toString() + '% ',
                    style: new TextStyle(
                        color: hexToColor("#3784B6"), fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Image.asset(
                      'image/good.jpg',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: RaisedButton(
                      child: Text('뒤로가기', style: TextStyle(fontSize: 24)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.green,
                      textColor: Colors.white,
                    ),
                  ),
                ])),
              ))),
    );
  }
}
