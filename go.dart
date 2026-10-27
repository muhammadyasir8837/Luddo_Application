import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/colors/app_colors.dart';
import 'package:luddo_app/screens/diamond/store_clipper.dart';

class GoScreen extends StatefulWidget {
  const GoScreen({super.key});

  @override
  State<GoScreen> createState() => _GoScreenState();
}

class _GoScreenState extends State<GoScreen> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg image.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: height,
            width: width,
            color: Colors.deepPurpleAccent.withValues(alpha: 0.7),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.12,
                        left: width * 0.03,
                      ),
                    ),
                    Container(
                      height: height * 0.035,
                      width: width * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.03),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF05275A),
                            Color(0xFF0B5EA8), // top blue
                            Color(0xFF0B5EA8), // top blue
                            // bottom navy
                          ],
                          stops: [0.0, 0.55, 1.0],
                        ),
                        border: Border.all(
                          color: const Color(0xFF00E5FF),
                          width: width * 0.0055,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(
                              0xFF00E5FF,
                            ).withValues(alpha: 0.6),
                            blurRadius: 15,
                            spreadRadius: 2,
                          ),
                          BoxShadow(
                            color: const Color(
                              0xFF00E5FF,
                            ).withValues(alpha: 0.3),
                            blurRadius: 30,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Icon(Icons.undo, color: Color(0xFF00E5FF)),
                    ),
                  ],
                ),

                Container(
                  height: height * 0.15,
                  width: width * 0.38,

                  child: Image.asset("assets/images/event.png"),
                ),
                SizedBox(height: height * 0.06),
                Container(
                  height: height * 0.2,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.02),
                    border: Border.all(color: AppColors.cardBorder),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColors.neonBlue, AppColors.cardBorder],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: height * 0.19,
                        width: width * 0.36,

                        child: Image.asset("assets/images/seasons.png"),
                      ),
                      Container(
                        height: height * 0.19,
                        width: width * 0.43,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height * 0.07,
                              width: width * 0.43,
                              child: Text(
                                "COMPLETE SEASON TO \nGET EXCLUSIVE REWARDS",
                                style: GoogleFonts.bangers(
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: width * 0.004,
                                  fontSize: width * 0.035,
                                  color: AppColors.yellow,
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.04,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  width * 0.04,
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    AppColors.neonGreen,
                                    AppColors.green,
                                    AppColors.deepGreen,
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "GO",
                                  style: GoogleFonts.bangers(
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: width * 0.005,
                                    fontSize: width * 0.05,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ClipPath(
                  clipper: StoreClipper(),
                  child: Container(
                    height: height * 0.1,
                    width: width,

                    child: Column(
                      children: [
                        Container(
                          height: height * 0.1,
                          width: width,

                          child: Row(
                            children: [
                              Container(
                                height: height * 0.12,
                                width: width,

                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 8, 5, 224), // top
                                      Color.fromARGB(255, 4, 8, 97),
                                      Color.fromARGB(255, 2, 26, 180),
                                      Color(0xFF5382FF),
                                      Color(0xFF5382FF),
                                    ],
                                    stops: [0.0, 0.22, 0.50, 0.78, 1.0],
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * 0.1,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                        //
                                        border: Border.all(
                                          width: width * 0.001,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: height * 0.035),
                                          Container(
                                            height: height * 0.037,
                                            width: width * 0.2,

                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/mplace.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "EVENT",
                                            style: GoogleFonts.bangers(
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: width * 0.005,
                                              fontSize: width * 0.03,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.1,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                        //
                                        border: Border.all(
                                          width: width * 0.001,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: height * 0.035),
                                          Container(
                                            height: height * 0.037,
                                            width: width * 0.2,

                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/group.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "FRIENDS",
                                            style: GoogleFonts.bangers(
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: width * 0.005,
                                              fontSize: width * 0.03,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.1,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                        //
                                        border: Border.all(
                                          width: width * 0.001,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: height * 0.035),
                                          Container(
                                            height: height * 0.037,
                                            width: width * 0.2,

                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/home.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "HOME",
                                            style: GoogleFonts.bangers(
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: width * 0.005,
                                              fontSize: width * 0.03,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.1,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                        //
                                        border: Border.all(
                                          width: width * 0.001,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: height * 0.035),
                                          Container(
                                            height: height * 0.037,
                                            width: width * 0.2,

                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/trolley.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "SHOP",
                                            style: GoogleFonts.bangers(
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: width * 0.005,
                                              fontSize: width * 0.03,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.1,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                        //
                                        border: Border.all(
                                          width: width * 0.001,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: height * 0.035),
                                          Container(
                                            height: height * 0.037,
                                            width: width * 0.2,

                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/dices.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "INVENTORY",
                                            style: GoogleFonts.bangers(
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: width * 0.005,
                                              fontSize: width * 0.03,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
