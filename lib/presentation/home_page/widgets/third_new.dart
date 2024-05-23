import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/imageconstants.dart';

class ThirdNew extends StatefulWidget {
  const ThirdNew({Key? key}) : super(key: key);

  @override
  State<ThirdNew> createState() => _ThirdNewState();
}

class _ThirdNewState extends State<ThirdNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 300,
                      child: Row(
                        children: [
                          Text(
                            "ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset(Imageconstants.q1),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(Imageconstants.q2),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(Imageconstants.q3),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  // Centering the container
                  Center(
                    child: Container(
                      height: 300,
                      width: 1000,
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 300,
                            width: 300,
                            child: Image.asset(Imageconstants.n1),
                          ),
                          Spacer(), // Add Spacer to evenly distribute space
                          Container(
                            height: 300,
                            width: 300,
                            child: Image.asset(Imageconstants.n2),
                          ),
                          Spacer(), // Add Spacer to evenly distribute space
                          Container(
                            height: 300,
                            width: 300,
                            child: Image.asset(Imageconstants.n3),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
