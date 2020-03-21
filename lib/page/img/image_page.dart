import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

const _PATH = "assets/images/image";
const _BackImg = "$_PATH/background1.jpg";
const _LogoImg = "$_PATH/logo.png";

class ImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ImageState();
}

class _ImageState extends State<ImagePage> {
  Widget _limitSize() => Container(
        child: Image.asset(
          _LogoImg,
          width: 560,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_BackImg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 120.0),
            _limitSize(),
            Column(
              children: <Widget>[
RaisedButton(
              onPressed: () {
                print("click");
              },
              color: Colors.blue,
              child: Text(
                "Continue with Google Login",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              shape: StadiumBorder(
                side: BorderSide(color: RED_LIGHT, width: 1),
              ),
            ),
            RaisedButton(
              onPressed: () {
                print("click");
              },
              color: Colors.blue,
              child: Text(
                "Continue with Facebook Login",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              shape: StadiumBorder(
                side: BorderSide(color: RED_LIGHT, width: 1),
              ),
            ),
            
              ],
            ),
            Text(
              "We don't post anything to Facebook or Instagram. \nBy signing in, you agree to our Privacy Policy",
              style: TextStyle(fontSize: 30, color: Colors.white,),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
