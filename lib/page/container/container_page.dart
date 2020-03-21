

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';
import 'dart:math';

class ContainerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContainerState();
}

class _ContainerState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.CONTAINER),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: RED,
            child: Text("SizedBox(height: 100) - marginBottom: 100"),
          ),
          SizedBox(height: 100),
          Container(
            color: YELLOW,
            padding:
                EdgeInsets.only(left: 10.0, right: 50.0, top: 10, bottom: 30),
            child: Container(
              color: BLUE_DEEP,
              child: Text("Container->padding,    padding: EdgeInsets.only(left: 10.0, right: 50.0, top: 10, bottom: 30),"),
            ),
          ),
          Container(
            width: 200.0,
            height: 100.0,
            color: GREEN,
            child: Text("width = 200 , height = 100"),
          ),
          Container(
            color: RED,
            child: Container(
              margin:
                  EdgeInsets.only(left: 10.0, right: 50.0, top: 10, bottom: 30),
              color: GREEN,
              child: Text("Container->margin,   margin: EdgeInsets.only(left: 10.0, right: 50.0, top: 10, bottom: 30),"),
            ),
          ),
          Container(
            color: BLUE_LIGHT,
            alignment: Alignment.bottomRight,
            height: 200,
            child: Text("justifyContent: 'flex-end' : alignment: Alignment.bottomRight, "),
          ),
          Container(
            color: YELLOW,
            height: 100.0,
            alignment: AlignmentDirectional.bottomEnd,
            child: Text(
              "justifyContent: 'flex-end' : alignment: AlignmentDirectional.bottomEnd, ",
            ),
          ),
          Container(
            color: BLUE_LIGHT,
            constraints: BoxConstraints.expand(height: 50.0),
            child: Text("BoxConstraints constraints height: 50.0"),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 100.0),
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                color: RED),
            child: Text("decoration: ShapeDecoration borderRadius 30, Container-margin & padding"),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 200.0),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [BLUE_LIGHT, YELLOW]),
                shape: BoxShape.circle),
            child: Text("decoration: BoxDecoration "),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            constraints: BoxConstraints.expand(height: 100, width: 100),
            color: BLUE_LIGHT,
            child: Text("this.transform"),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            constraints: BoxConstraints.expand(width: 300, height: 100),
            color: RED_LIGHT,
            transform: Matrix4.rotationY(pi / 4)..rotateX(pi / 4),
            child: Text("transform: Matrix4.rotationY(pi / 4)"),
          )
        ],
      )),
    );
  }
}
