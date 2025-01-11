import 'package:fit_up/dashboard/dashboard.dart';
import 'package:fit_up/responsive_helper.dart';
//import 'package:fit_up/signup_login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double wr = ApplyLayout.shr(context);
    double hr = ApplyLayout.swr(context);
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50,),
        Center(child: Image.asset('assets/boy_girl.png')),
        SizedBox(height: 40,),
        Text('Welcome, Stefani', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Text("You are all set now, let's reach your \n        goals together with us", style: TextStyle(fontSize: 15),),
        SizedBox(height: height * 0.3,),
       
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Dashboard() ));
          },
          child: Container(
                      height: 50 * hr,
                      width: width - (40 * wr),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Go To Home',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                            SizedBox(width: 10),
                        ],
                      )),
        )
      ],),
    );
  }
}