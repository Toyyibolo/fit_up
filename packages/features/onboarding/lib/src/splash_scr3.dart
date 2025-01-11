import 'package:auto_size_text/auto_size_text.dart';
import 'splash_scr4.dart';
import 'package:fit_up/responsive_helper.dart';
import 'package:flutter/material.dart';

class SplashScreen3 extends StatelessWidget {

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
              clipper: BeizerCurve1(),
              child: Container(
                color: Colors.blue,
                height: height * 0.69,
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: ((height/2) + 20) ,height: 87 * hr),
                  Image.asset('assets/man_2_.png', width: 308.58 * wr , height: 351.86 * hr),
                  SizedBox(height: 33),
                  Padding(
                    padding:  EdgeInsets.only(left: 30.0 * wr),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Eat Well', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),], )),
                  SizedBox(height: 15,),
                  Padding(
                    padding:  EdgeInsets.only(left: 30.0 * wr),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText('Lets start a healthy lifestyle with us, we can \ndetermine your diet every day.healthy \neating is fun', style: TextStyle(fontSize: 15, ),),    
                      ],
                    ),
                  ),
            SizedBox(height: 100 * hr,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SplashScreen4())));
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
      ));
  }
}

class BeizerCurve1 extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path()
    ..lineTo(0, size.height * 0.5)
    ..quadraticBezierTo(size.width * 0.5,size.height ,size.width ,size.height * 0.6)
    //..quadraticBezierTo(size.width * 0.75,size.height,size.width, size.height * 0.6 )
    ..lineTo(size.width, 0);
    print(size.height*0.5);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}


