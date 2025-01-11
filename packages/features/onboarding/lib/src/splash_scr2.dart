import 'splash_scr3.dart';
//import 'package:fit_up/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SplashScreen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double wr = ApplyLayout.shr(context);
    double hr = ApplyLayout.swr(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Stack(
           children: [
            ClipPath(
              clipper: BeizerCurve(),
              child: Container(
                color: Colors.blue,
                height: height * 0.4,
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: ((height/2) + 20) ,height: 82.96 * hr),
                  Image.asset('assets/Group 10288.png', height: 323.08 * hr, width: 268.37 * wr),
                  SizedBox(height: 55*hr),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0 * wr),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Get Burn', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),], )),
                  SizedBox(height: 15 * hr,),
                  Padding(
                    padding:  EdgeInsets.only(left: 30.0 * wr),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText('Lets keep burning, to achieve your goals, it \nhurts only temporarily, if you give up now\nyou will be in pain forever', style: TextStyle(fontSize: 15, ),),    
                      ],
                    ),
                  ),
            SizedBox(height: 108 * hr),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SplashScreen3())));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 30.0 * wr),
                    child: Container(
                      height: 50 * hr,
                      width: 50 * wr,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                      //color: Colors.blue,
                    ),
                  ),
                ),
              ],
            )      
           ],
          ),
              )]),
        ),
      ));
  }
}

class BeizerCurve extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path()
    ..lineTo(0, size.height * 0.4)
    ..quadraticBezierTo(size.width * 0.25,(size.height - size.height * 0.7) ,size.width * 0.5 ,size.height * 0.7 )
    ..quadraticBezierTo(size.width * 0.75,size.height,size.width, size.height * 0.6 )
    ..lineTo(size.width, 0);
    print(size.height* 0.6);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}


