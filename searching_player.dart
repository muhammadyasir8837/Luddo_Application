import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:luddo_app/colors/app_colors.dart';

class SearchingPlayer extends StatefulWidget {
  const SearchingPlayer({super.key});

  @override
  State<SearchingPlayer> createState() => _SearchingPlayerState();
}

class _SearchingPlayerState extends State<SearchingPlayer> {
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
            padding: EdgeInsets.only(
              left: width * 0.05,
              right: width * 0.05,
              top: height * 0.05,
              bottom: height * 0.15,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    _iconButton(
                      icon: Icons.undo,
                      onTap: () {
                        // Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    _iconButton(icon: Icons.music_off, onTap: () {}),
                    SizedBox(width: width * 0.04),
                    _iconButton(icon: Icons.volume_down, onTap: () {}),
                  ],
                ),
                SizedBox(height: height * 0.14),
                Container(
                  height: height * 0.41,
                  width: width,

                  child: Column(
                    children: [
                      Container(
                        height: height * 0.045,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.02),
                          border: Border.all(
                            color: AppColors.neonBlue,
                            width: width * 0.003,
                          ),
                          gradient: LinearGradient(
                            colors: [
                              AppColors.cyanAccent,
                              AppColors.cardBorder,
                              AppColors.cyanBorder,
                            ],
                            end: Alignment.bottomCenter,
                            begin: Alignment.topCenter,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "REAL TIME MULTIPLAYER",
                            style: GoogleFonts.bangers(
                              fontSize: width * 0.04,
                              color: AppColors.neonBlue,
                              letterSpacing: width * 0.004,
                              wordSpacing: width * 0.006,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: height * 0.06,
                        width: width * 0.65,

                        child: Center(
                          child: Text(
                            "CLASSIC>ENTRY AMOUNT : 1,000",
                            style: GoogleFonts.bangers(
                              fontSize: width * 0.043,
                              color: AppColors.neonGreen,
                              letterSpacing: width * 0.004,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.2,
                        width: width * 0.75,

                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: height,
                                width: width,

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: height * 0.14,
                                      width: width,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            AppColors.neonBlue,
                                            AppColors.cyan,
                                            AppColors.cyanBorder,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          "assets/images/men.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.03,
                                      width: width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          width * 0.01,
                                        ),
                                        border: Border.all(
                                          color: AppColors.neonBlue,
                                          width: width * 0.003,
                                        ),
                                        gradient: LinearGradient(
                                          colors: [
                                            AppColors.cyanAccent,
                                            AppColors.cardBorder,
                                            AppColors.cyanBorder,
                                          ],
                                          end: Alignment.bottomCenter,
                                          begin: Alignment.topCenter,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "GUEST5902",
                                          style: GoogleFonts.bangers(
                                            fontSize: width * 0.03,
                                            color: AppColors.white,
                                            letterSpacing: width * 0.004,
                                            wordSpacing: width * 0.006,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: height,
                                width: width,
                                padding: EdgeInsets.only(top: height * 0.14),
                                child: Center(
                                  child: Text(
                                    "VS",
                                    style: GoogleFonts.bangers(
                                      fontSize: width * 0.06,
                                      color: AppColors.white,
                                      letterSpacing: width * 0.004,
                                      wordSpacing: width * 0.006,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: height,
                                width: width,

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,

                                  children: [
                                    SizedBox(
                                      height: height * 0.14,
                                      width: width,

                                      child: Image(
                                        image: AssetImage(
                                          "assets/images/women.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.03,
                                      width: width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          width * 0.01,
                                        ),
                                        border: Border.all(
                                          color: AppColors.neonBlue,
                                          width: width * 0.003,
                                        ),
                                        gradient: LinearGradient(
                                          colors: [
                                            AppColors.cyanAccent,
                                            AppColors.cardBorder,
                                            AppColors.cyanBorder,
                                          ],
                                          end: Alignment.bottomCenter,
                                          begin: Alignment.topCenter,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "???",
                                          style: GoogleFonts.bangers(
                                            fontSize: width * 0.03,
                                            color: AppColors.white,
                                            letterSpacing: width * 0.004,
                                            wordSpacing: width * 0.006,
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
                      Spacer(),
                      SizedBox(
                        height: height * 0.03,
                        width: width * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.036,
                              width: width * 0.036,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.neonGreen,
                                    AppColors.green,
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "00:59",
                              style: GoogleFonts.bangers(
                                fontSize: width * 0.045,
                                color: Colors.white,

                                letterSpacing: width * 0.004,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: height * 0.05,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    border: Border.all(
                      color: AppColors.neonBlue,
                      width: width * 0.007,
                    ),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.cyanAccent,
                        AppColors.cardBorder,
                        AppColors.cyanBorder,
                      ],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                    ),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "SEARCHING FOR PLAYER...",

                      hintStyle: GoogleFonts.bangers(
                        fontSize: width * 0.04,
                        color: AppColors.white,
                        letterSpacing: width * 0.005,
                        wordSpacing: width * 0.006,
                      ),
                      border: InputBorder.none,
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

  Widget _iconButton({required IconData icon, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(width * 0.004),
      child: Container(
        height: height * 0.04,
        width: width * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width * 0.03),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.cardBorder,
              AppColors.blue,
              AppColors.cyanAccent,
            ],
            stops: [0.0, 0.55, 1.0],
          ),
          border: Border.all(
            color: const Color(0xFF00E5FF),
            width: width * 0.0055,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF00E5FF).withValues(alpha: 0.6),
              blurRadius: 15,
              spreadRadius: 2,
            ),
            BoxShadow(
              color: const Color(0xFF00E5FF).withValues(alpha: 0.3),
              blurRadius: 30,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Center(
          child: Icon(icon, size: width * 0.054, color: Colors.cyan),
        ),
      ),
    );
  }
}
