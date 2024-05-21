import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/texts.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ------------------------------
        Text("PORTFOLIO", style: MyTextStyle.cursivetext),

        SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First container
            Container(
              height: 300,
              width: 270,
              child: CarouselSlider(
                items: [
                  Image.network(
                      "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  viewportFraction: 1,
                  height: 300,
                ),
              ),
            ),
            SizedBox(width: 10),
            // Second container
            Container(
              height: 300,
              width: 270,
              child: CarouselSlider(
                items: [
                  Image.network(
                      "https://images.pexels.com/photos/23985550/pexels-photo-23985550/free-photo-of-a-windmill-in-the-fog-with-a-tree-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  viewportFraction: 1,
                  height: 300,
                ),
              ),
            ),
            SizedBox(width: 10),
            // Third container
            Container(
              height: 300,
              width: 270,
              child: CarouselSlider(
                items: [
                  Image.network(
                      "https://images.pexels.com/photos/23985550/pexels-photo-23985550/free-photo-of-a-windmill-in-the-fog-with-a-tree-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  viewportFraction: 1,
                  height: 300,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 70,
        ),

        // ---------------------------2nd row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First container
            Container(
              height: 300,
              width: 270,
              child: CarouselSlider(
                items: [
                  Image.network(
                      "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  viewportFraction: 1,
                  height: 300,
                ),
              ),
            ),
            SizedBox(width: 10),
            // Second container
            Container(
              height: 300,
              width: 270,
              child: CarouselSlider(
                items: [
                  Image.network(
                      "https://images.pexels.com/photos/23985550/pexels-photo-23985550/free-photo-of-a-windmill-in-the-fog-with-a-tree-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  viewportFraction: 1,
                  height: 300,
                ),
              ),
            ),
            SizedBox(width: 10),
            // Third container
            Container(
              height: 300,
              width: 270,
              child: CarouselSlider(
                items: [
                  Image.network(
                      "https://images.pexels.com/photos/23985550/pexels-photo-23985550/free-photo-of-a-windmill-in-the-fog-with-a-tree-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  Image.network(
                      "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  viewportFraction: 1,
                  height: 300,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
