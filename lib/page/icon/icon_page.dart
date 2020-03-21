

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class IconPage extends StatefulWidget {
  @override
  _IconState createState() => _IconState();
}

class _IconState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.ICON),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.chevron_left,
              size: 200,
              color: GREEN,
            ),
            Icon(
              Icons.chevron_left,
              size: 200,
              color: BLUE_DEEP,
              textDirection: TextDirection.rtl,
            ),
            Icon(
              Icons.expand_less,
              size: 200,
              color: PURPLE,
            ),
            Icon(
              Icons.expand_more,
              size: 200,
              color: BLUE_DEEP,
            )
          ],
        ),
      ),
    );
  }
}
