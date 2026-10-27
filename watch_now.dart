import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchNow extends StatelessWidget {
  const WatchNow({super.key});

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
            Container(
              height: height,
              width: width,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.3,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.015),
                      color: Colors.cyan,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: width * 0.03,
                          spreadRadius: width * 0.005,
                          offset: const Offset(0, 0),
                          color: Colors.cyanAccent.withOpacity(0.8),
                          // spreadRadius: width * 0.2,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "YOU WONS 150 COINS!",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.03,
                            color: const Color.fromARGB(255, 204, 154, 4),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          "MATCH ADD TO DOUBLE\n         YOUR COINS",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.032,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        Text(
                          "WATCH NOW",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.03,
                            color: const Color.fromARGB(255, 204, 154, 4),
                          ),
                        ),
                        Text(
                          "150 * 2:300",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.03,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: height * 0.31,
              right: width * 0.05,
              child: Container(
                height: height * 0.07,
                width: width * 0.07,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: width * 0.004),
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  size: height * 0.035,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
