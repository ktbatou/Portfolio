import 'package:flutter/widgets.dart';

class ActionBar extends StatefulWidget {
  @override
  _ActionState createState() => _ActionState();
}

class _ActionState extends State<ActionBar>{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.only(right: 30),
              child: Container(
                  child: Text('Who am i',
                      style: TextStyle(color: Color(0xff606078))))),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.only(right: 30),
              child: Container(
                  child: Text('My work',
                      style: TextStyle(color: Color(0xff606078))))),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.only(right: 30),
              child: Container(
                  child: Text('Services',
                      style: TextStyle(color: Color(0xff606078))))),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.only(right: 30),
              child: Container(
                  child: Text(
                'Contact me',
                style: TextStyle(color: Color(0xff606078)),
              ))),
        ),
      ],
    );
  }
}
