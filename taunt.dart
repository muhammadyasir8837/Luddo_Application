import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/colors/app_colors.dart';

class Taunt extends StatefulWidget {
  const Taunt({super.key});

  @override
  State<Taunt> createState() => _TauntState();
}

class _TauntState extends State<Taunt> {
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
                Container(
                  height: height * 0.45,
                  width: width * 0.87,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "TAUNT EMOJI",
                        style: GoogleFonts.bangers(
                          fontSize: width * 0.08,
                          color: AppColors.neonBlue,
                          letterSpacing: width * 0.01,
                          wordSpacing: width * 0.002,
                        ),
                      ),
                      Container(
                        height: height * 0.29,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: AppColors.bgBottom,
                          borderRadius: BorderRadius.circular(width * 0.02),
                          border: Border.all(
                            color: AppColors.neonBlue,
                            width: width * 0.008,
                          ),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Center(
                              child: SizedBox(
                                height: height * 0.12,
                                width: width * 0.26,

                                child: Image(
                                  image: AssetImage("assets/images/emoji.png"),
                                ),
                              ),
                            ),
                            Positioned(
                              right: -width * 0.035,
                              top: -height * 0.04,
                              child: Container(
                                height: height * 0.08,
                                width: width * 0.08,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.white,
                                    width: width * 0.004,
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      AppColors.red,
                                      AppColors.redAccent,
                                      AppColors.deepRed,
                                    ],
                                  ),
                                ),
                                child: Icon(
                                  Icons.close,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "RS 360.00",
                        style: GoogleFonts.bangers(
                          fontSize: width * 0.07,
                          color: AppColors.white,
                        ),
                      ),
                    ],
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
