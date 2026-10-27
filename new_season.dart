import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/colors/app_colors.dart';

class NewSeason extends StatefulWidget {
  const NewSeason({super.key});

  @override
  State<NewSeason> createState() => _NewSeasonState();
}

class _NewSeasonState extends State<NewSeason> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.5,
                  width: width * 0.88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.015),
                    border: Border.all(
                      color: AppColors.neonBlue,
                      width: width * 0.007,
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.blue,
                        AppColors.cyanAccent,
                        AppColors.bgBottom,
                      ],
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Align(
                            alignment: Alignment.center,

                            child: Text(
                              "NEW SEASON",
                              style: GoogleFonts.bangers(
                                fontSize: width * 0.075,
                                color: AppColors.white,
                                wordSpacing: width * 0.01,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.15,
                            width: width * 0.29,

                            child: Image.asset("assets/images/season.png"),
                          ),
                          InkWell(
                            child: Container(
                              height: height * 0.042,
                              width: width * 0.26,
                              decoration: BoxDecoration(
                                color: AppColors.green,
                                borderRadius: BorderRadius.circular(
                                  width * 0.03,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'DOWNLOAD',
                                  style: GoogleFonts.bangers(
                                    fontSize: width * 0.05,
                                    color: AppColors.white,
                                    letterSpacing: width * 0.003,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
