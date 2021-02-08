import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config.dart';

class Helper {
  Widget heightBox(double height) => SizedBox(
        height: height,
      );
  Widget widthBox(double width) => SizedBox(
        width: width,
      );
  Widget appButton({Function onTap, String text}) => RaisedButton(
        onPressed: onTap,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        elevation: 5,
        child: Ink(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 150, minHeight: 45.0),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      );
  Container buildTextField(
      {Color color,
      Color textColor,
      String hintText,
      IconData icon,
      Color shadowColor = Colors.white,
      double spredColor = 0,
      double blurColor = 0,
      double dx = 0,
      double dy = 0,
      TextEditingController controller,
      bool secure = false}) {
    return Container(
      // width: _width,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
        boxShadow: [
          BoxShadow(
            offset: Offset(dx, dy),
            blurRadius: blurColor,
            spreadRadius: spredColor,
            color: shadowColor,
          )
        ],
      ),
      child: Container(
        child: Row(
          children: [
            Icon(
              icon,
              color: textColor,
              size: 20,
            ),
            Expanded(
              child: TextFormField(
                obscureText: secure,
                controller: controller,
                cursorHeight: 20,
                cursorColor: Colors.black,
                style: TextStyle(fontSize: 14),
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(color: textColor),
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildCircleIcon({String imageName}) {
    return Container(
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.blue,
        child: SvgPicture.asset(
          "assets/Svg/${imageName}.svg",
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
