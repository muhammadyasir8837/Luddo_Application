import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/colors/app_colors.dart';
import 'package:luddo_app/custonWidgets/currencyCard/currency_card.dart';

class VoiceChat extends StatefulWidget {
  const VoiceChat({super.key});

  @override
  State<VoiceChat> createState() => _VoiceChatState();
}

class _VoiceChatState extends State<VoiceChat> {
  int selectedNumber = 0;
  List<String> numbers = ["2P/3P/4P", "5P", "6P"];
  List<String> values = ["CREATE", "JOIN"];
  int selectedValue = 0;
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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg image.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: height,
            width: width,
            color: const Color.fromARGB(255, 2, 16, 37).withOpacity(0.8),
            padding: EdgeInsets.only(
              left: width * 0.05,
              right: width * 0.05,
              top: height * 0.05,
              bottom: height * 0.06,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: height * 0.04,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.03),
                      border: Border.all(
                        color: AppColors.neonBlue,
                        width: width * 0.005,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: width * 0.002,
                          color: AppColors.cyan,
                          spreadRadius: width * 0.001,
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppColors.sky, AppColors.lightGrey],
                      ),
                    ),
                    child: Icon(
                      Icons.undo,
                      size: width * 0.06,
                      color: Colors.cyan,
                    ),
                  ),
                ),

                SizedBox(
                  height: height * 0.09,
                  width: width * 0.55,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CurrencyCard(
                        value: "40",
                        imagePath: "assets/images/diamond.png",
                        width: width,
                        height: height,
                        cardWidth: width * 0.22,
                      ),
                      SizedBox(width: width * 0.1),
                      CurrencyCard(
                        value: "3,000",
                        imagePath: "assets/images/bitcoin.png",
                        width: width,
                        height: height,
                        cardWidth: width * 0.22,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.08),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: height * 0.4,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.05),
                        border: Border.all(
                          color: Colors.cyan,
                          width: width * 0.006,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            AppColors.blue,
                            AppColors.bgBottom,
                            AppColors.cyanAccent,
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: Colors.cyanAccent,

                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "NO OF PLAYERS",
                            style: GoogleFonts.bangers(
                              fontSize: height * 0.036,
                              color: Colors.white,
                              wordSpacing: width * 0.01,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(numbers.length, (index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedNumber = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  height: height * 0.09,
                                  width: width * 0.17,
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGrey,

                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                    border: selectedNumber == index
                                        ? Border.all(
                                            color: Colors.cyan,
                                            width: 2,
                                          )
                                        : null,
                                  ),
                                  child: Center(
                                    child: Text(
                                      numbers[index],
                                      style: GoogleFonts.bangers(
                                        fontSize: width * 0.04,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "VOICE CHAT",
                                style: GoogleFonts.bangers(
                                  fontSize: height * 0.036,
                                  color: Colors.white,
                                  wordSpacing: width * 0.01,
                                ),
                              ),
                              Container(
                                height: height * 0.04,
                                width: width * 0.08,
                                child: Image.asset("assets/images/voices.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      top: -height * 0.022,
                      child: SizedBox(
                        height: height * 0.055,
                        width: width * 0.7,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(values.length, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedValue = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: Duration(microseconds: 300),
                                height: height * 0.05,
                                width: width * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    width * 0.06,
                                  ),
                                  color: AppColors.deepCyan,
                                  border: selectedValue == index
                                      ? Border.all(color: AppColors.grey)
                                      : null,
                                ),
                                child: Center(
                                  child: Text(
                                    values[index],
                                    style: GoogleFonts.bangers(
                                      fontSize: width * 0.05,
                                      color: AppColors.neonBlue,
                                      letterSpacing: width * 0.01,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: height * 0.02),
                SizedBox(
                  height: height * 0.05,
                  width: width * 0.23,
                  child: Text(
                    "ENTRY FEE",
                    style: GoogleFonts.bangers(
                      fontSize: height * 0.036,
                      color: Colors.white,
                      wordSpacing: width * 0.01,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  height: height * 0.05,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 5, 5, 49),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(width * 0.009),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(width * 0.009),
                          onTap: () {
                            setState(() {
                              if (coins > 0) {
                                coins -= 1000;
                              }
                            });
                          },
                          child: Container(
                            height: height * 0.028,
                            width: width * 0.05,
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "$coins COINS",
                        style: GoogleFonts.bangers(
                          fontSize: height * 0.02,
                          color: Colors.white,
                        ),
                      ),
                      Material(
                        color: const Color.fromARGB(255, 2, 245, 11),
                        borderRadius: BorderRadius.circular(width * 0.009),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(width * 0.009),
                          onTap: () {
                            setState(() {
                              if (coins <= 0) {
                                coins += 100;
                              }
                            });
                          },
                          child: Container(
                            height: height * 0.028,
                            width: width * 0.05,
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Card(
                  color: AppColors.deepGreen, // Light green card
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width * 0.025),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 6,
                    ), // Bottom of card remains visible
                    child: Container(
                      height: height * 0.055,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                          255,
                          5,
                          241,
                          13,
                        ), // Darker container
                        borderRadius: BorderRadius.circular(width * 0.02),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "NEXT",
                        style: GoogleFonts.bangers(
                          fontSize: width * 0.07,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: width * 0.007,
                        ),
                      ),
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
