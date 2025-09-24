import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/core/constants/texts.dart';
import 'package:my_portfolio/presentation/about_me/about_me.dart';
import 'package:my_portfolio/presentation/get_in_touch/get_in_touch.dart';
import 'package:my_portfolio/presentation/home_page/home_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/third_page.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,

        // centerTitle: true,
        title: Text(
          "Hey There!",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold)),
        ),

        actions: [
          // onTap:() => _scrollToSecondPage,
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
            child: Text(
              "Home",
              style: MyTextStyle.appbartext,
            ),
          ),

          SizedBox(
            width: 15,
          ),

          InkWell(
            onTap: () {
              // _scrollToThirdPage();
              // setState(() {});
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(),
                  ));
            },
            child: Text(
              "Portfolio",
              style: MyTextStyle.appbartext,
            ),
          ),

          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              // _scrollToThirdPage();
              // setState(() {});
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExperiencePage(),
                  ));
            },
            child: Text(
              "Work Experience",
              style: MyTextStyle.appbartext,
            ),
          ),

          SizedBox(
            width: 15,
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutMe(),
                  ));
            },
            child: Text(
              "About Me",
              style: MyTextStyle.appbartext,
            ),
          ),

          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetInTouch(),
                  ));
            },
            child: Text(
              "Get In Touch",
              style: MyTextStyle.appbartext,
            ),
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildTimelineCard(
              title: "Product Developer",
              company: "Avanzo Cyber Security Solutions Pvt Ltd",
              duration: "June 2024 – Present",
              description:
                  "Working on multiple real-world projects in Flutter and web applications.",
              logoPath: "assets/images/avanzologo.jpg",
              responsibilities: [
                "Developed modules for Hospital Management System (Web + 2 Mobile Apps).",
                "Built and deployed CyberHulk app (cybersecurity Q&A) on Play Store.",
                "Built and deployed UdaanCheck app for Indian travellers — live on Play Store & App Store.",
              ],
              techStack: [
                "assets/images/flutter_logo-nobg.png",
                "assets/images/dartlogo_nobg.png",
                "assets/images/restapi_logo.png",
                "assets/images/github_logo.jpg",
              ],
            ),
            _buildTimelineCard(
              title: "Flutter Developer Intern",
              company: "Luminar Technolab",
              duration: "Jan 2024 – June 2024",
              description:
                  "6-month internship in Flutter development, focusing on real-world app building.",
              logoPath: "assets/images/luminar_logo.png",
              responsibilities: [
                "Created clones of Netflix and OLX apps.",
                "Developed a Notes app and Quiz app.",
                "Built a Vehicle Rental app with booking features.",
              ],
              techStack: [
                "assets/images/flutter_logo-nobg.png",
                "assets/images/dartlogo_nobg.png",
                "assets/images/hivelogo_nobg.png",
                "assets/images/firebase_logo.png",
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineCard({
    required String title,
    required String company,
    required String duration,
    required String description,
    required String logoPath,
    required List<String> responsibilities,
    required List<String> techStack, // image asset paths
  }) {
    return Card(
      color: ColorConstants.mainBlack.withOpacity(0.85),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Bigger Company Logo
            CircleAvatar(
              radius: 40, // Increased size
              backgroundColor: Colors.white10,
              backgroundImage: AssetImage(logoPath),
            ),
            const SizedBox(width: 20),
            // ✅ Experience Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange)),
                  const SizedBox(height: 4),
                  Text(company,
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white70)),
                  const SizedBox(height: 4),
                  Text(duration,
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.lightBlueAccent)),
                  const SizedBox(height: 12),
                  Text(description,
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.white.withOpacity(0.9))),
                  const SizedBox(height: 12),

                  // ✅ Responsibilities
                  ...responsibilities.map(
                    (task) => Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("• ",
                              style: TextStyle(
                                  color: Colors.orange, fontSize: 16)),
                          Expanded(
                            child: Text(task,
                                style: GoogleFonts.poppins(
                                    fontSize: 14, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // ✅ Tech stack with images
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: techStack
                        .map((path) => Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white.withOpacity(0.1),
                              ),
                              child: Image.asset(
                                path,
                                height: 30, // Bigger size for clarity
                                width: 30,
                                fit: BoxFit.contain,
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
