import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(40.0),
            padding: EdgeInsets.only(top: 100.0),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Welcome, Scout!",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "What's your name?",
                          style: TextStyle(
                              fontSize: 38, fontWeight: FontWeight.w700),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 30.0),
                                child: Text(
                                  "First Name",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextField(
                                controller: TextEditingController(text: ""),
                                style: TextStyle(fontSize: 30.0),
                                onChanged: (value) {
                                  print("value: $value");
                                },
                              ),
                            ]),
                        Padding(
                            padding: EdgeInsets.only(top: 40.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Last Name",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextField(
                                    controller: TextEditingController(text: ""),
                                    style: TextStyle(fontSize: 30.0),
                                    onChanged: (value) {
                                      print("value: $value");
                                    },
                                  ),
                                ])),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      onPressed: () {
                        print("click");
                      },
                      color: Colors.blue,
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 140),
                      shape: StadiumBorder(
                        side: BorderSide(color: RED_LIGHT, width: 1),
                      ),
                    ),
                  )
                ])));
  }
}
