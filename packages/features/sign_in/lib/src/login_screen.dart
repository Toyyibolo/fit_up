
import 'package:flutter/material.dart';
import 'package:fit_up/responsive_helper.dart';


class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // const MyApp({super.key});
  List<IconData> icons = [Icons.mail, Icons.lock];

  List<String> texts = ['Email', 'Password'];

  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            50.hb,
            //SizedBox(width: width * 0.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hey there,',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Create an account',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 15 * hr,
            ),
            for (var i = 0; i < 2; i++)
              Padding(
                padding: EdgeInsets.only(top: 15 * hr),
                child: CustomField(
                  icon: icons[i],
                  text: texts[i],
                  widthFactor: 1,
                ),
              ),
            SizedBox(height: 5),
            Padding(
                padding: EdgeInsets.only(left: 25.0 * hr),
                child: Text(
                  'Forget your password?',
                  style: TextStyle(decoration: TextDecoration.underline),
                )),
            SizedBox(height: 200 * hr),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => CompleteProfile())));
              },
              child: Container(
                  height: 50 * hr,
                  width: width - (40 * wr),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => CompleteProfile())));
                    },
                    child: Text('Log In',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: EdgeInsets.only(left: 25 * wr, right: 25 * wr),
                child: Row(
                  children: [
                    Container(
                        width: width * 0.4,
                        child: Divider(
                          //height: width * 0.1,
                          thickness: 0.5,
                          color: Colors.grey,
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        'or',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                        width: width * 0.4,
                        child: Divider(
                          //height: width * 0.1,
                          thickness: 0.5,
                          color: Colors.grey,
                        )),
                  ],
                )),
            SizedBox(height: 20 * hr),
            Padding(
              padding: EdgeInsets.only(left: width / 3, right: width / 3),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50 * hr,
                      width: 50 * wr,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Center(
                          child: Image.asset(
                              'assets/google-logo-png-suite-everything-you-need-know-about-google-newest-0 2.png')),
                    ),
                    Container(
                      height: 50 * hr,
                      width: 50 * wr,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Center(child: Image.asset('assets/Vector.png')),
                    ),
                  ]),
            ),
            SizedBox(height: 25 * hr),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Dont have an account?',
                  style: TextStyle(fontSize: 15)),
              TextSpan(
                  text: 'Sign up',
                  style: TextStyle(fontSize: 15, color: Colors.purple))
            ]))
          ]),
        ),
      ),
    );
  }
}
