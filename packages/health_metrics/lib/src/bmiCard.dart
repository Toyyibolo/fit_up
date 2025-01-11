import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 20.0),
      child: Container(
          padding: EdgeInsets.only(left: 20),
          width: width,
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(colors: [
                Colors.lightBlue,
                const Color.fromARGB(255, 51, 76, 97),
              ])),
          child: Row(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 20),
              Text(
                'BMI(Body Mass Index)',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text('You have a normal weight',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text('View more',
                          style: TextStyle(color: Colors.white)))),
            ])
          ])),
    );
  }
}
