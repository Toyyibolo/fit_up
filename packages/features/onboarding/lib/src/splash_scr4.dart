import 'package:auto_size_text/auto_size_text.dart';
import 'package:responsive_helper/responsive_helper.dart';
import '../../../sign_up/lib/src/signup.dart';
import 'package:flutter/material.dart';

class SplashScreen4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Stack(
           children: [
            ClipPath(
              clipper: BeizerCurve3(),
              child: Container(
                color: Colors.blue,
                height: height * 0.5,
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: ((height/2) + 20) ,height: 130.04 * hr),
                  Image.asset('assets/Group 10289.png', width: 242.94 * wr , height: 292 * hr),
                  SizedBox(height: 47.97 * hr),
                  Padding(
                    padding:  EdgeInsets.only(left: 30.0 * wr),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Improve Sleep \nQuality', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),], )),
                  SizedBox(height: 20,),
                  Padding(
                    padding:  EdgeInsets.only(left: 30.0 * wr),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText('Improve the quality of your sleeep with us,\ngood quality sleep can bring a good mood\nin the morning', style: TextStyle(fontSize: 15, ),),    
                      ],
                    ),
                  ),
            SizedBox(height: 60 * hr,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SignUp())));
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
          ), )
          ]),
        ),
      )
      );
  }
}

class BeizerCurve3 extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path()
    ..lineTo(0, size.height * 0.3)
    ..quadraticBezierTo(size.width * 0.1,size.height * 0.05 ,size.width * 0.28 ,size.height * 0.3)
    ..quadraticBezierTo(size.width * 0.7,size.height, size.width, size.height*0.7)
    ..lineTo(size.width, 0);
    print(size.height*0.5);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}


