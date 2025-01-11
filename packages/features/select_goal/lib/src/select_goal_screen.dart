import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fit_up/responsive_helper.dart';
import 'package:fit_up/signup_login/welcome_page.dart';
import 'package:flutter/material.dart';

class GoalPage extends StatefulWidget {
  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  List<String> images = [
    'assets/fit_jpg.png',
    'assets/weight_jpg.png',
    'assets/boy_girl.png',
  ];

  List goalTitle = ['Improve Shape', 'Lean & Tone', 'Reduce Sugar'];
  List goalDetails = ['I have a low amount of body fat\n and need to build muscles', "i'm skinny fat.i look thin but have\n no shape.i want to add lean\n muscle in the right way", 'i want excercise that will aid me\n in reducing my blood sugar'];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double wr = ApplyLayout.shr(context);
    double hr = ApplyLayout.swr(context);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, bottom: 0),
                child: Container(
                  height: 150,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  child: const Column(children: [
                    SizedBox(height: 20),
                    Text(
                      'What is Your goal?',
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold ),
                    ),
                    SizedBox(height: 5),
                    Text('It will help us to choose a best \n         program for you')
                  ]),
                ),
              ),
              //SizedBox(width: 50),
              const SizedBox(height: 10),
              CarouselSlider.builder(
              options: CarouselOptions(
              height: 478 * hr,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
                              itemCount: images.length,
                              itemBuilder: (BuildContext context, int index, int realIndex) {
              //final image = images[index];
                return GoalCard(context, images[index], goalTitle[index], goalDetails[index]);
                              },
                            ),
                const SizedBox(height: 40),            
               GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => WelcomePage())));
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
                          'Confirm',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        
                      ],
                    )))              
            ],
          ),
        ),
      )),
    );
  }

  GoalCard(BuildContext context, String image, String goal, String details) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double wr = ApplyLayout.shr(context);
    double hr = ApplyLayout.swr(context);
    return Container(
      height: 478 * hr,
      width: 275 * wr,
      //color: Colors.blue,
      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
         height: 478 * hr,
         width: 275 * wr,
         child: Column(
           children: [
            const SizedBox(height: 40),
             Image.asset(image),
             const SizedBox(height: 10),
             Text(goal, style: const TextStyle(color: Colors.white, fontSize: 20),),
             const SizedBox(height: 5),
             Padding(
               padding: EdgeInsets.only(left: width * 0.25, right: width * 0.25),
               child: const Divider(
                height: 3,
                color: Colors.white,
                thickness: 1.5,
               ),
             ),
             const SizedBox(height: 20),
             AutoSizeText(details, style: const TextStyle(fontSize: 15, color: Colors.white)),
           
           ],
         ),
      )     
    );
  }
}
