import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TileBottom extends StatelessWidget {
  String text;
  IconData icon;

  TileBottom({this.text = "text", this.icon = FontAwesomeIcons.fonticons});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20.0,
          ),
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Row(
          children: <Widget>[
            Container(
              width: 68,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Icon(icon, color: Color(0xFFFCB73E)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
