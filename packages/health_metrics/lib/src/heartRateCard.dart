import 'package:flutter/material.dart';

class HeartRateCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 20.0),
      child: Container(
          padding: EdgeInsets.only(left: 20),
          width: width,
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(colors: [
                Colors.lightBlue,
                Color.fromARGB(255, 127, 175, 214),
              ])),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 20),
            Text(
              'Heart Rate',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text('78 BPM', style: TextStyle(color: Colors.white, fontSize: 15)),
          ])),
    );
  }
}
