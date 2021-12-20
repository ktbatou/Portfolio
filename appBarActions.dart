import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActionBar extends StatefulWidget {
  PageController control;
  ActionBar({required this.control});
  @override
  _ActionState createState() => _ActionState(controller: control);
}

class _ActionState extends State<ActionBar> {
  PageController controller;
  _ActionState({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /*  Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(top: 16, right: 30),
              child: Container(
                  child: Text('Blog',
                      style:
                          TextStyle(color: Color(0xff606078), fontSize: 20)))),
        ),*/
        Container(
            width: 180,
            height: 50,
            padding: EdgeInsets.only(top: 16, right: 30),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xfff0e6dc)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Color(0xff856654),
                          )))),
              child: Text('Hire me',
                  style: TextStyle(color: Color(0xffC84E6D), fontSize: 20)),
              onPressed: () {},
            )),
      ],
    );
  }
}
