import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/colors/app_colors.dart';

import 'package:luddo_app/custonWidgets/currencyCard/currency_cards.dart';

class PlayOnline extends StatefulWidget {
  const PlayOnline({super.key});

  @override
  State<PlayOnline> createState() => _PlayOnlineState();
}

class _PlayOnlineState extends State<PlayOnline> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;

    width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 214, 1, 1).withOpacity(0.7),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backside.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: height,
            width: width,
            color: const Color.fromARGB(255, 214, 1, 1).withOpacity(0.7),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: height * 0.02)),
                Container(
                  height: height * 0.08,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: AppColors.amber,
                        width: width * 0.008,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.06,
                        width: width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height * 0.01),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/bar_image.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.13),
                      CurrencyCards(
                        value: "40",
                        imagePath: "assets/images/diamond.png",
                        width: width,
                        height: height,
                        cardWidth: width * 0.19,
                        onAdd: () {
                          print("Diamond Added");
                        },
                      ),
                      SizedBox(width: width * 0.07),
                      CurrencyCards(
                        value: "3,000",
                        imagePath: "assets/images/bitcoin.png",
                        width: width,
                        height: height,
                        cardWidth: width * 0.22,
                        onAdd: () {
                          print("Diamond Added");
                        },
                      ),
                      Spacer(),

                      Icon(
                        Icons.shopping_cart,
                        color: Colors.amber,
                        size: width * 0.07,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: height * 0.04,
                    width: width * 0.13,

                    child: Image.asset("assets/images/groups.png"),
                  ),
                ),
                SizedBox(height: height * 0.1),
                Container(
                  height: height * 0.11,
                  width: width * 0.63,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.transparent,
                        child: Container(
                          height: height * 0.09,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                AppColors.neonBlue,
                                AppColors.sky,
                                AppColors.sky,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(width * 0.02),
                            border: Border.symmetric(
                              horizontal: BorderSide(color: AppColors.grey),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.sky.withOpacity(0.8),
                                blurRadius: width * 0.006,
                                spreadRadius: width * 0.002,
                                offset: const Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: width * 0.08),
                              child: Text(
                                "PLAY ONLINE",
                                style: GoogleFonts.bangers(
                                  fontSize: width * 0.06,
                                  color: Colors.white,
                                  letterSpacing: width * 0.004,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Image outside the left side
                      Positioned(
                        left: -width * 0.04,
                        top: height * 0.025,
                        child: SizedBox(
                          height: height * 0.06,
                          width: width * 0.2,
                          child: Image.asset("assets/images/global.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.016),
                Container(
                  height: height * 0.11,
                  width: width * 0.63,
                  child: Card(
                    elevation: 0,
                    color: Colors.transparent,
                    child: Container(
                      height: height * 0.09,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.yellow,
                            AppColors.amber,
                            AppColors.amber,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(width * 0.02),
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: AppColors.grey,
                            width: width * 0.003,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.yellow.withOpacity(0.4),
                            blurRadius: width * 0.002,
                            spreadRadius: width * 0.001,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: height * 0.06,
                            width: width * 0.2,
                            child: Image.asset("assets/images/heart.png"),
                          ),
                          Text(
                            "PLAY WITH FRIENDS",
                            style: GoogleFonts.bangers(
                              fontSize: width * 0.05,
                              color: Colors.white,
                              letterSpacing: width * 0.004,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Image outside the left side
                ),
                SizedBox(height: height * 0.016),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height * 0.11,
                      width: width * 0.3,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Container(
                              height: height * 0.09,
                              width: width * 0.6,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.neonGreen,
                                    AppColors.neonGreen,
                                    AppColors.deepGreen,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(
                                  width * 0.02,
                                ),
                                border: Border.symmetric(
                                  horizontal: BorderSide(color: AppColors.grey),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.green.withOpacity(0.8),
                                    blurRadius: width * 0.006,
                                    spreadRadius: width * 0.002,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "COMPUTER",
                                  style: GoogleFonts.bangers(
                                    fontSize: width * 0.045,
                                    color: Colors.white,
                                    letterSpacing: width * 0.004,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Image outside the left side
                          Positioned(
                            top: -height * 0.007,
                            left: width * 0.05,
                            child: SizedBox(
                              height: height * 0.06,
                              width: width * 0.2,
                              child: Image.asset("assets/images/rebot.png"),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: width * 0.03),

                    Container(
                      height: height * 0.11,
                      width: width * 0.3,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Container(
                              height: height * 0.09,
                              width: width * 0.6,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.red,
                                    AppColors.red,
                                    AppColors.deepRed,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(
                                  width * 0.02,
                                ),
                                border: Border.symmetric(
                                  horizontal: BorderSide(color: AppColors.grey),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.red.withOpacity(0.8),
                                    blurRadius: width * 0.006,
                                    spreadRadius: width * 0.002,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "PASS PLAY",
                                  style: GoogleFonts.bangers(
                                    fontSize: width * 0.045,
                                    color: Colors.white,
                                    letterSpacing: width * 0.004,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Image outside the left side
                          Positioned(
                            top: -height * 0.007,
                            left: width * 0.05,
                            child: SizedBox(
                              height: height * 0.06,
                              width: width * 0.2,
                              child: Image.asset("assets/images/luddos.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    ),
                    Container(
                      height: height * 0.08,
                      width: width * 0.15,
                      child: Image.asset("assets/images/star.png"),
                    ),
                    SizedBox(width: width * 0.07),
                    Container(
                      height: height * 0.08,
                      width: width * 0.2,

                      child: Icon(
                        Icons.settings,
                        color: AppColors.yellow,
                        size: height * 0.07,
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
