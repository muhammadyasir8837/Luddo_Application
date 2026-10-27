import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg image.jpg"),
              fit: BoxFit.cover,
            ),
            color: Colors.deepPurpleAccent.withValues(alpha: 0.7),
          ),
          child: Stack(
            children: [
              Positioned(
                top: height * 0.045,
                left: width * 0.03,
                child: Container(
                  height: height * 0.05,
                  width: width * 0.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.02),
                    border: Border.all(
                      color: Colors.cyanAccent,
                      width: width * 0.005,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: width * 0.2,
                        spreadRadius: width * 0.04,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(Icons.undo),
                ),
              ),
              Positioned(
                top: height * 0.2,
                left: width * 0.09,
                child: Row(
                  children: [
                    Container(
                      height: height * 0.043,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(height * 0.01),
                          topRight: Radius.circular(height * 0.01),
                        ),
                        color: const Color.fromARGB(255, 66, 180, 196),
                      ),
                      child: Center(
                        child: Text(
                          "FACEBOOK",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.02),
                    Container(
                      height: height * 0.043,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(height * 0.01),
                          topRight: Radius.circular(height * 0.01),
                        ),
                        color: const Color.fromARGB(255, 127, 236, 227),
                      ),
                      child: Center(
                        child: Text(
                          "BUDDIES",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: height * 0.25,
                left: width * 0.09,
                right: width * 0.09,
                child: Container(
                  height: height * 0.6,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.01),
                    color: Colors.cyan,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan.withOpacity(0.4),
                        blurRadius: height * 0.2,
                        spreadRadius: height * 0.4,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.068),
                        child: Container(
                          height: height * 0.045,
                          width: width * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.02),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "SEARCH YOUR BUDDY",
                              style: GoogleFonts.bangers(
                                fontSize: height * 0.03,

                                color: const Color.fromARGB(255, 6, 34, 7),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.1),
                      Text(
                        "  NO BUDDIES YET!PLAY ONLINE \nMULTIPLAYER TO MAKE BUDDIES.",
                        style: GoogleFonts.bangers(
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
