import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final PageController pageController = PageController();

  int currentIndex = 0;

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

            Positioned(
              top: height * 0.045,
              left: width * 0.03,
              child: Container(
                height: height * 0.045,
                width: width * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 0.02),
                  border: Border.all(
                    color: Colors.cyanAccent,
                    width: width * 0.006,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: width * 0.04,
                      color: Colors.cyan,
                      spreadRadius: width * 0.02,
                    ),
                  ],
                  color: const Color.fromARGB(255, 59, 73, 201),
                ),
                child: Icon(Icons.undo, size: width * 0.06, color: Colors.cyan),
              ),
            ),

            Positioned(
              top: height * 0.2,
              left: width * 0.09,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      pageController.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      height: height * 0.043,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(height * 0.01),
                          topRight: Radius.circular(height * 0.01),
                        ),
                        color: currentIndex == 0
                            ? const Color.fromARGB(255, 9, 195, 219)
                            : Colors.grey,
                      ),
                      child: Center(
                        child: Text(
                          "FACEBOOK",
                          style: GoogleFonts.bangers(
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  InkWell(
                    onTap: () {
                      pageController.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      height: height * 0.043,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(height * 0.01),
                          topRight: Radius.circular(height * 0.01),
                        ),
                        color: currentIndex == 1
                            ? const Color.fromARGB(255, 9, 195, 219)
                            : Colors.grey,
                      ),
                      child: Center(
                        child: Text(
                          "BUDDIES",
                          style: GoogleFonts.bangers(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
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
                  border: Border.all(
                    color: Colors.cyanAccent,
                    width: width * 0.009,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 68, 11, 133),
                      Color.fromARGB(255, 12, 1, 43),
                      Color.fromARGB(255, 12, 1, 43),
                      Color.fromARGB(255, 12, 1, 43),
                    ],
                    stops: [0.0, 0.3, 0.7, 1.0],
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: width * 0.04,
                      color: Colors.cyan,
                      spreadRadius: width * 0.02,
                    ),
                  ],
                ),
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.07,
                          width: width * 0.5,
                          child: Row(
                            children: [
                              Container(
                                height: height * 0.06,
                                width: width * 0.15,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 30, 10, 100),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/flogo-removebg-preview.png",
                                    ),
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: height * 0.06,
                                  width: width * 0.35,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      14,
                                      117,
                                      252,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "LOGIN WITH FACEBOOK",
                                      style: GoogleFonts.bangers(
                                        fontSize: width * 0.04,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "CHALLENGE YOUR FRIENDS!",
                          style: GoogleFonts.bangers(
                            fontSize: width * 0.065,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.007,
                          ),
                        ),
                        Text(
                          "ENTRY : 100 COINS",
                          style: GoogleFonts.bangers(
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w200,
                            color: const Color.fromARGB(255, 10, 186, 209),
                          ),
                        ),
                        SizedBox(height: height * 0.015),
                        Container(
                          height: height * 0.05,
                          width: width * 0.8,
                          margin: EdgeInsets.symmetric(
                            horizontal: width * 0.04, // left & right padding
                            vertical: height * 0.01, // top & bottom padding
                          ),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(height * 0.01),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "SEARCH YOUR BUDDY",
                                hintStyle: GoogleFonts.bangers(
                                  fontSize: width * 0.045,
                                  fontWeight: FontWeight.w200,
                                  color: const Color.fromARGB(255, 41, 41, 41),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.15),
                        Text(
                          "NO BUDDIES YET! PLAY ONLINE\nMULTIPLAYER TO MAKE BUDDIES.",
                          style: GoogleFonts.bangers(
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
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
