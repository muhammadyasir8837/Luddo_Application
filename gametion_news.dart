import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/colors/app_colors.dart';

class GametionNews extends StatefulWidget {
  const GametionNews({super.key});

  @override
  State<GametionNews> createState() => _GametionNewsState();
}

class _GametionNewsState extends State<GametionNews> {
  late double height, width;
  int coins = 1000;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
          ),
          child: Container(
            height: height,
            width: width,
            color: Colors.deepPurpleAccent.withValues(alpha: 0.7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "GAMETION NEWS",
                  style: GoogleFonts.bangers(
                    fontSize: height * 0.03,
                    color: AppColors.white,
                  ),
                ),
                Container(
                  height: height * 0.6,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.bgBottom,
                        AppColors.purple,
                        AppColors.deepPurple,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    border: Border.all(
                      color: Colors.cyan,
                      width: width * 0.007,
                    ),
                    borderRadius: BorderRadius.circular(height * 0.013),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "CREATE",

                        style: GoogleFonts.bangers(
                          fontSize: width * 0.09,
                          letterSpacing: width * 0.007,
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: [
                                Color(0xFFFFF176), // Light Gold
                                Color(0xFFFFC107), // Gold
                                Color(0xFFFF8F00), // Dark Gold
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ).createShader(const Rect.fromLTWH(0, 0, 250, 80)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4), // Border thickness
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height * 0.035),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFFF176), // Light Gold
                              Color(0xFFFFC107), // Gold
                              Color(0xFFFF8F00), // Dark Gold
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Container(
                          height: height * 0.17,
                          width: width * 0.55,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(
                              255,
                              40,
                              2,
                              179,
                            ), // Inside color
                            borderRadius: BorderRadius.circular(height * 0.025),
                          ),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: ShaderMask(
                              shaderCallback: (bounds) {
                                return const LinearGradient(
                                  colors: [
                                    Colors.yellow,
                                    Colors.orange,
                                    Colors.deepOrange,
                                  ],
                                ).createShader(bounds);
                              },
                              child: Text(
                                "TOURNAMENT",
                                style: GoogleFonts.cinzelDecorative(
                                  fontSize: width * 0.05,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.008),
                      Container(
                        height: height * 0.047,
                        width: width * 0.6,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "NAME",
                              style: GoogleFonts.bangers(
                                fontSize: width * 0.04,
                                color: AppColors.neonBlue,
                                letterSpacing: width * 0.004,
                                wordSpacing: width * 0.006,
                              ),
                            ),
                            Container(
                              height: height * 0.034,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(
                                  width * 0.01,
                                ),
                                border: Border.all(
                                  color: AppColors.neonBlue,
                                  width: width * 0.007,
                                ),
                              ),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: height * 0.047,
                        width: width * 0.6,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "TYPE",
                              style: GoogleFonts.bangers(
                                fontSize: width * 0.04,
                                color: AppColors.neonBlue,
                                letterSpacing: width * 0.004,
                                wordSpacing: width * 0.006,
                              ),
                            ),
                            Container(
                              height: height * 0.034,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(
                                  width * 0.01,
                                ),
                                border: Border.all(
                                  color: AppColors.neonBlue,
                                  width: width * 0.007,
                                ),
                              ),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: height * 0.016),
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.6,

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment:
                            //     MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                " START\n DATE",

                                style: GoogleFonts.bangers(
                                  fontSize: width * 0.04,
                                  color: AppColors.neonBlue,
                                  letterSpacing: width * 0.004,
                                  // wordSpacing: width * 0.006,
                                  height: 0.9,
                                ),
                              ),
                              SizedBox(width: width * 0.05),
                              Container(
                                height: height * 0.034,
                                width: width * 0.25,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(
                                    width * 0.01,
                                  ),
                                  border: Border.all(
                                    color: AppColors.neonBlue,
                                    width: width * 0.007,
                                  ),
                                ),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: height * 0.047,
                        width: width * 0.6,

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "START\nTIME",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.bangers(
                                fontSize: width * 0.04,
                                color: AppColors.neonBlue,
                                letterSpacing: width * 0.004,
                                // wordSpacing: width * 0.006,
                                height: 0.9,
                              ),
                            ),
                            SizedBox(width: width * 0.06),

                            Container(
                              height: height * 0.034,
                              width: width * 0.25,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(
                                  width * 0.01,
                                ),
                                border: Border.all(
                                  color: AppColors.neonBlue,
                                  width: width * 0.007,
                                ),
                              ),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "ENTRY FEE",
                        style: GoogleFonts.bangers(
                          fontSize: height * 0.04,
                          color: Colors.white,
                          letterSpacing: width * 0.005,
                        ),
                      ),
                      Container(
                        height: height * 0.04,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 5, 5, 49),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.02,
                              width: width * 0.05,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(
                                  width * 0.009,
                                ),
                              ),
                              child: Icon(Icons.remove, size: width * 0.03),
                            ),
                            Text(
                              "$coins COINS",
                              style: GoogleFonts.bangers(
                                fontSize: height * 0.02,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: height * 0.02,
                              width: width * 0.05,
                              decoration: BoxDecoration(
                                color: AppColors.neonGreen,
                                borderRadius: BorderRadius.circular(
                                  width * 0.009,
                                ),
                              ),
                              child: Icon(Icons.add, size: width * 0.03),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.04),
                Text(
                  "MORE GAMES",
                  style: GoogleFonts.bangers(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "VIDEOS",
                      style: GoogleFonts.bangers(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "COMMUNITY",
                      style: GoogleFonts.bangers(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
