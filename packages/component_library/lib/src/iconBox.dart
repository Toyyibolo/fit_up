import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  Widget icon;
  IconBox(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey[700], borderRadius: BorderRadius.circular(10)),
      child: Center(child: icon),
    );
  }
}
