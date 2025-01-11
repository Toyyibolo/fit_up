import 'package:flutter/material.dart';

class TargetCard extends StatelessWidget {
  @override
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 209, 221, 243),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Todays Target',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue),
                child: Text(
                  'Check',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
