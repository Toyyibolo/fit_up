
import 'package:fit_up/responsive_helper.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  IconData icon;
  String text;
  double widthFactor;
  CustomField({required this.icon, required this.text, required this.widthFactor});

  @override
  Widget build(BuildContext context) {
    double wr = ApplyLayout.shr(context);
    double hr = ApplyLayout.swr(context);
    return Container(
      height: 48 * hr,
      width: 315* widthFactor * wr,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xfff7f8f8),
          //enabled: false,
          border: InputBorder.none,
          prefixIcon: Icon(icon, color: Colors.grey,),
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey)
          
          
          )
         

        ),

      
    );
  }
}