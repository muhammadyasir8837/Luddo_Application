import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: height,
              width: width,
              color: Colors.deepPurpleAccent.withValues(alpha: 0.7),
            ),
            Center(
              child: Container(
                height: height * 0.4,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 0.03),
                  border: Border.all(
                    color: Colors.cyanAccent,
                    width: width * 0.004,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     spreadRadius: width * 0.01,
                  //     // color: Colors.cyanAccent.withOpacity(0.6),
                  //     // blurRadius: width * 0.01,
                  //   ),
                  // ],
                  // image: DecorationImage(
                  //   image: AssetImage("assets/images/bg image.jpg"),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "WELCOME",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.05,
                            color: const Color.fromARGB(255, 3, 192, 9),
                          ),
                        ),
                        Text(
                          "GUEST5098",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.036,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: height * 0.008),
                        Text(
                          "HAVE YOU EVER PLAYED\n        SKY LUDO?",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.036,
                            color: Colors.white,
                            wordSpacing: width * 0.01,
                          ),
                        ),
                        SizedBox(height: height * 0.02),

                        Container(
                          height: height * 0.045,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(width * 0.02),
                          ),
                          child: Center(
                            child: Text(
                              "YES",
                              style: GoogleFonts.bangers(
                                fontSize: height * 0.03,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Container(
                          height: height * 0.045,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(width * 0.02),
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Text(
                              "NO",
                              style: GoogleFonts.bangers(
                                fontSize: height * 0.03,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
