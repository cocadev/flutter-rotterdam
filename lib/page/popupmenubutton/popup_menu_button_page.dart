

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class PopupMenuButtonPage extends StatefulWidget {
  @override
  _PopupMenuButtonState createState() => _PopupMenuButtonState();
}

class _PopupMenuButtonState extends State<PopupMenuButtonPage> {
  @override
  Widget build(BuildContext context) {
    Widget _paddingPopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "English",
                    style:
                        TextStyle(color: PURPLE, fontWeight: FontWeight.w700),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Chinese",
                    style:
                        TextStyle(color: PURPLE, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
          elevation: 4,
          padding: EdgeInsets.symmetric(horizontal: 50),
        );
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.POPUP_MENU_BUTTON),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           
            SizedBox(height: 10),
            Container(
              color: PURPLE,
              child: _paddingPopup(),
            ),
          
          ],
        ),
      ),
    );
  }
}
