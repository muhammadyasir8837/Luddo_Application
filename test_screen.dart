import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: height,
          width: width,
          color: Colors.deepPurpleAccent.withValues(alpha: 0.7),
          padding: EdgeInsets.only(
            left: width * 0.05,
            right: width * 0.05,
            top: height * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: width * 0.08,
                    height: height * 0.08,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF05275A),
                          Color(0xFF0B5EA8), // top blue
                          Color(0xFF05275A),

                          // bottom navy
                        ],
                        stops: [0.0, 0.55, 1.0],
                      ),
                      border: Border.all(
                        color: const Color(0xFF00E5FF),
                        width: 2.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF00E5FF).withValues(alpha: 0.6),
                          blurRadius: 15,
                          spreadRadius: 3,
                        ),
                        BoxShadow(
                          color: const Color(0xFF00E5FF).withValues(alpha: 0.3),
                          blurRadius: 30,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close,
                        color: Color(0xFF00E5FF),
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: height * 0.58,
                width: width * 0.9,
                padding: EdgeInsets.only(
                  top: height * 0.035,
                  bottom: height * 0.01,
                  left: width * 0.07,
                  right: width * 0.07,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.06),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 31, 15, 56),
                      Color.fromARGB(255, 61, 13, 124), // top blue
                      Color.fromARGB(255, 17, 1, 43),

                      // bottom navy
                    ],
                    stops: [0.0, 0.55, 1.0],
                  ),
                  border: Border.all(
                    color: const Color(0xFF00E5FF),
                    width: 2.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00E5FF).withValues(alpha: 0.6),
                      blurRadius: 15,
                      spreadRadius: 3,
                    ),
                    BoxShadow(
                      color: const Color(0xFF00E5FF).withValues(alpha: 0.3),
                      blurRadius: 30,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "SKY LUDDO BUDDY REQUEST",
                        style: GoogleFonts.bangers(
                          fontStyle: FontStyle.normal,
                          letterSpacing: width * 0.005,
                          fontSize: width * 0.05,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: height,
                        width: width,

                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: width,
                                height: height,

                                child: Column(
                                  children: [
                                    SizedBox(height: height * 0.07),
                                    buttonWidget("CHALLENGES"),
                                    SizedBox(height: height * 0.03),
                                    buttonWidget("BUDDY REQUESTS"),

                                    SizedBox(height: height * 0.03),
                                    buttonWidget("FACEBOOK FRIENDS"),

                                    SizedBox(height: height * 0.03),
                                    buttonWidget("BUDDIES"),
                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              child: SizedBox(
                                width: width,
                                height: height,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "YOU DON'T HAVE ANY",
                                      style: GoogleFonts.bangers(
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: width * 0.005,
                                        fontSize: width * 0.03,
                                        color: const Color(0xFF00E5FF),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "BUDDY REQUESTS ",
                                      style: GoogleFonts.bangers(
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: width * 0.005,
                                        fontSize: width * 0.03,
                                        color: const Color(0xFF00E5FF),
                                        fontWeight: FontWeight.bold,
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
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              Container(
                height: height * 0.07,
                width: width * 0.35,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF00E5FF),
                    width: 2.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00E5FF).withValues(alpha: 0.6),
                      blurRadius: 15,
                      spreadRadius: 3,
                    ),
                    BoxShadow(
                      color: const Color(0xFF00E5FF).withValues(alpha: 0.3),
                      blurRadius: 30,
                      spreadRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(width * 0.02),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF05275A), // top dark blue
                      Color.fromARGB(255, 105, 69, 162),

                      Color(0xFF05275A), // bottom dark blue
                    ],
                    stops: [0.0, 0.55, 1.0],
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.1,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/group.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                      Expanded(
                        child: SizedBox(
                          height: height,
                          width: width,
                          child: Center(
                            child: Text(
                              "BUY MORE BUDDIES",
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: GoogleFonts.bangers(
                                fontStyle: FontStyle.normal,
                                letterSpacing: width * 0.005,
                                fontSize: width * 0.035,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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

  Widget buttonWidget(String text) {
    return Container(
      height: height * 0.07,
      width: width * 0.27,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.02),
        color: Color.fromARGB(255, 53, 104, 150),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.bangers(
            fontStyle: FontStyle.normal,
            letterSpacing: width * 0.005,
            fontSize: width * 0.04,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
