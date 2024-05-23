// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/texts.dart';
import 'package:url_launcher/url_launcher.dart';

class FourthPagr extends StatefulWidget {
  const FourthPagr({super.key});

  @override
  State<FourthPagr> createState() => _FourthPagrState();
}

class _FourthPagrState extends State<FourthPagr> {
  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 45),
        Text(
          "KEEP IN TOUCH",
          style: MyTextStyle.name,
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // -------------------first item
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "name",
                          style: MyTextStyle.insidegreytext,
                        ),
                      ),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "email id",
                          style: MyTextStyle.insidegreytext,
                        ),
                      ),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    )
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "message",
                      style: MyTextStyle.insidegreytext,
                    ),
                  ),
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "contact",
                      style: MyTextStyle.insidewhitetext,
                    ),
                  ),
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                )
              ],
            ),
            SizedBox(
              width: 100,
            ),

            // -----------------------------second item

            Container(
              padding: EdgeInsets.all(15),
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.orange, width: 3),
              //   borderRadius: BorderRadius.all(Radius.circular(5)),
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Lets build something amazing together",
                    style: MyTextStyle.insidewhitetext,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "call:",
                    style: MyTextStyle.insidegreytext,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "+91-1234567890",
                    style: MyTextStyle.insidewhitetext,
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "mail:",
                    style: MyTextStyle.insidegreytext,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "akhilam214@gmail.com",
                    style: MyTextStyle.insidewhitetext,
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 70,
        ),
        Container(
          width: 500,
          height: 100,
          decoration: BoxDecoration(
              color: const Color.fromARGB(225, 255, 153, 0),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _launchURL('https://linkedin.com/in/akhila-m-a434b0299');
                },
                child: Container(
                    height: 30,
                    width: 30,
                    child: Image.asset("assets/images/social.png")),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  _launchURL('https://github.com/akhi0216');
                },
                child: Container(
                    height: 30,
                    width: 30,
                    child: Image.asset("assets/images/code.png")),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  _launchURL('https://instagram.com/dove_bee214');
                },
                child: Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/images/video.png"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  _launchURL('mailto:akhilam214@gmail.com');
                },
                child: Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/images/newemail.png"),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
