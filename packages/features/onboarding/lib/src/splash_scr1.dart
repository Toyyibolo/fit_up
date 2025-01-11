import 'splash_scr2.dart';
import 'package:responsive_helper/responsive_helper.dart';
import 'package:flutter/material.dart';


class SplashScreen1 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return Scaffold( 
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: height/2 - (20 * hr),
                  //width: width/2,
            
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                                  style: TextStyle(color: Colors.black, fontSize: 46),
                                  children: <TextSpan>[
                    TextSpan(text: 'Fit', style: TextStyle(color: Colors.black, fontSize: 45 , fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Up',  style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold)),
                                   // TextSpan(text: 'com', style: TextStyle(decoration: TextDecoration.underline))
                                  ],
                      ),
                    ),
                  ],
                ),
                Text('Your ultimate fitness companion',  style: TextStyle(color: Colors.blueGrey, fontSize: 18)),
                SizedBox(
                  height: 250 * hr,
                ),
                Container(
                  height: 50 * hr,
                  width: width - (40 * wr),
                  decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(12)),
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SplashScreen2())));
              }, child: Text('Get Started', style: TextStyle(fontSize: 20)), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),))
              ],
            ),
          ),
        ),
      
    );
  }
  }
