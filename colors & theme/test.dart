import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  @override
  _ResponsiveState createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
  double contextWidth = MediaQuery.of(context).size.width;

    return Container(
      child: 
      Flex(
      direction: contextWidth >= 1200 ? Axis.horizontal : Axis.vertical,
      children: <Widget>[
        
      ],
      ),
    );
  }
}