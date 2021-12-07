import 'package:flutter/material.dart';

class Work2 extends StatefulWidget {
  @override
  _Work2State createState() => _Work2State();
}

class _Work2State extends State<Work2> {
  @override
  Widget build(BuildContext context) {
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xffC7D7D9),
      width: contextWidth,
      height: contextHeight,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "hello",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
