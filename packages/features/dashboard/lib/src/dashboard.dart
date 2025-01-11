import 'package:fit_up/responsive_helper.dart';
import '../../../../health_metrics/lib/src/bmiCard.dart';
import '../../../../health_metrics/lib/src/heartRateCard.dart';
import '../../../../component_library/lib/src/iconBox.dart';
import '../../../../component_library/lib/src/targetCerd.dart';
import '../../../../hydration_tracker/lib/src/waterIntake.dart';
import 'package:flutter/material.dart';
import '../../../../component_library/lib/src/textStyles.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double wr = ApplyLayout.shr(context);
    double hr = ApplyLayout.swr(context);
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      color: Colors.white24,
      child: Stack(children: [
        Positioned(
          top: 0,
          child: SizedBox(
              height: height * 0.9,
              width: width,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome Back',
                                style: FuTextStyles.lightGrey,
                              ),
                              Text('Stefani Wong',
                                  style: FuTextStyles.deepBlack),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: IconBox(Icon(Icons.notifications)),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      BmiCard(),
                      SizedBox(height: 15),
                      TargetCard(),
                      SizedBox(height: 20),
                      Text(
                        'Activity status',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      HeartRateCard(),
                      SizedBox(height: 20),
                      WaterIntakeCard(),
                    ],
                  ),
                ),
              )),
        ),
        Positioned(
          bottom: 0,
          child: Container(
              height: height * 0.1,
              width: width,
              color: Colors.grey[300],
              child: CustomNavigation()),
        ),
        Positioned(
          bottom: 60,
          left: width / 2,
          child: CustomPaint(
            painter: MidButton(),
          ),
        )
      ]),
    ));
  }
}

class CustomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double wr = ApplyLayout.shr(context);
    double hr = ApplyLayout.swr(context);
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home),
          Icon(Icons.track_changes),
          Container(
            height: height * 0.2,
            width: 100,
            //     child: Stack(

            //       children: [
            //         Positioned(
            //           bottom: 5,
            //           child: Container(
            //           height: 100,
            //           width: 100,
            //           decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue,),
            //           child: Icon(Icons.search_rounded)),
            //         ),
            //  ] ),
          ),
          Icon(Icons.camera),
          Icon(Icons.people),
        ],
      ),
    );
  }
}

class MidButton extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.blue;

    double dy = size.height;
    double dx = size.width / 2;

    canvas.drawCircle(Offset(dx, dy), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
