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
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;

    bool isScreenWide = MediaQuery.of(context).size.width >= 850;
    return Row(
      children: [
        isScreenWide
            ? Container(
                padding: EdgeInsets.only(top: 18, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Blog",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffC84E6D),
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              )
            : Container(),
        Container(
            width: isScreenWide ? 180 : 150,
            height: isScreenWide ? 50 : 35,
            padding: EdgeInsets.only(top: isScreenWide ? 16 : 5, right: 30),
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
