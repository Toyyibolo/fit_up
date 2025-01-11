import 'package:flutter/material.dart';

class WaterIntakeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 20.0),
      child: Container(
          // padding: EdgeInsets.only(left: 20),
          //width: 90,
          height: 300,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 192, 193, 245),
              borderRadius: BorderRadius.circular(20)
              //borderRadius: BorderRadius.circular(12),
              ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: 170,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(children: [
                Container(
                  width: 50,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ]),
            ),
            SizedBox(width: 20),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                      width: 160,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20))),
                ])
          ])),
    );
  }
}
