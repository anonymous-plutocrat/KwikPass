import 'package:flutter/material.dart';

Widget filledButton(String text, Color splashColor, Color highlightColor,
        Color fillColor, Color textColor, void function()) {
      return RaisedButton(
        highlightElevation: 0.0,
        splashColor: splashColor,
        highlightColor: highlightColor,
        elevation: 0.0,
        color: fillColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: TextStyle(
               color: textColor, fontSize: 15),
        ),
        onPressed: () {
          function();
        },
      );
    }