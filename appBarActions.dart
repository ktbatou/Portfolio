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
        Material(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          child: InkWell(
            onTap: () {
              controller.jumpToPage(0);
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Container(
                      child: Text('Who am i',
                          style: TextStyle(
                              color: Color(
                                0xff606078,
                              ),
                              fontSize: 20)))),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: EdgeInsets.only(right: 30),
              child: Container(
                  child: Text('My work',
                      style:
                          TextStyle(color: Color(0xff606078), fontSize: 20)))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: EdgeInsets.only(right: 70),
              child: Container(
                  child: Text('Services',
                      style:
                          TextStyle(color: Color(0xff606078), fontSize: 20)))),
        ),
      ],
    );
  }
}
