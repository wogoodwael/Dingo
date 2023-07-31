// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final Color color;
  Function()? onTap;
  CustomContainer(this.text, this.color, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 10),
        width: double.infinity,
        height: 65,
        color: color,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
