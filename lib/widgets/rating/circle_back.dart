import 'package:flutter/material.dart';

class IconBack extends StatefulWidget {
  @override
  _IconBackState createState() => _IconBackState();
}

class _IconBackState extends State<IconBack> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pop(context, true);
      },
      color: Colors.white70,
      child: Icon(
        Icons.arrow_back,
        size: 20,
      ),
      padding: EdgeInsets.all(15),
      shape: CircleBorder(),
    );
  }
}
