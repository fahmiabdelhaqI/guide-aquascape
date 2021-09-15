import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StarDisplayWidget extends StatelessWidget {
  int value;
  StarDisplayWidget({this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: Colors.amber,
        );
      }),
    );
  }
}
