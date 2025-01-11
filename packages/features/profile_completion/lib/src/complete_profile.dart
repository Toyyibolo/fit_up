import '../../../../component_library/lib/src/custom_drop.dart';
import 'package:fit_up/component_library/textfields.dart';
import 'package:fit_up/onboarding/splash_scr2.dart';
import 'package:fit_up/responsive_helper.dart';
import 'package:fit_up/signup_login/select_goal.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class CompleteProfile extends StatefulWidget {
  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  //const MyApp({Key? key}) : super(key: key);
  String dropdownValue = 'Choose Gender';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double wr = ApplyLayout.shr(context);
    double hr = ApplyLayout.swr(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(children: [
            SizedBox(height: 84 * hr),
                width: width,
                height: 265 * hr,
                child: Stack(children: [
                  Center(child: Image.asset('assets/contour1.png')),
                  Center(child: Image.asset('assets/womanOnaBall.png'))
                ])),
            SizedBox(height: 30 * hr),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(
                'Lets complete your profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'It will help us to kmow about you',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
            ]),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: CustomDropDown(),
            ),
            SizedBox(height: 15),
            CustomField(
              icon: Icons.date_range_outlined,
              text: 'Date of Birth',
              widthFactor: 1.06,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0 * wr, right: 25 * wr),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomField(
                    icon: Icons.monitor_weight_outlined,
                    text: 'Your weight',
                    widthFactor: 0.85,
                  ),
                  Container(
                    height: 50 * hr,
                    width: 50 * wr,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'KG',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0 * wr, right: 25 * wr),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomField(
                    icon: Icons.import_export_rounded,
                    text: 'Your height',
                    widthFactor: 0.85,
                  ),
                  Container(
                    height: 50 * hr,
                    width: 50 * wr,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'CM',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => GoalPage())));
                },
                child: Container(
                    height: 40 * hr,
                    width: width - (40 * wr),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        )
                      ],
                    )))
          ]),
        ),
      ),
    );
  }
}

class ButtonProfile extends StatelessWidget {
  Widget child;
  ButtonProfile({required this.child});
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25),
      child: Container(
        height: 50,
        width: double.maxFinite,
        //color: Color(0xfff7f8f8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xfff7f8f8),
        ),
        child: child,
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  Widget child;
  Button2({required this.child});
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double wr = ApplyLayout.shr(context);
    double hr = ApplyLayout.swr(context);
    return Padding(
      padding: EdgeInsets.only(left: 25 * wr, right: 25 * wr),
      child: Container(
        height: 50 * hr,
        width: 280 * wr,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xfff7f8f8),
        ),
        child: child,
      ),
    );
  }
}
