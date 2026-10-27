import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/screens/diamond/store_clipper.dart';

class Challenges extends StatefulWidget {
  const Challenges({super.key});

  @override
  State<Challenges> createState() => _ChallengesState();
}

class _ChallengesState extends State<Challenges> {
  late double height, width;
  int selectedTab = 0;
  int selectedNav = 1;

  final List<String> tabLabels = [
    "CHALLENGES",
    "BUDDY\nREQUESTS",
    "FACEBOOK\nFRIENDS",

    "BUDDIES",
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Colors.black,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.1,
                  width: width * 0.9,

                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).maybePop(),
                      child: Container(
                        height: width * 0.09,
                        width: width * 0.09,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 12, 20, 70),
                          border: Border.all(
                            color: Colors.cyanAccent,
                            width: width * 0.006,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyanAccent.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.close,
                            color: Colors.cyanAccent,
                            size: width * 0.06,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: height * 0.64,
                  width: width * 0.9,
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: height * 0.02,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.025),
                    border: Border.all(color: Colors.cyanAccent, width: 2),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,

                      colors: [
                        Color.fromARGB(255, 63, 50, 153),
                        Color.fromARGB(255, 4, 1, 32),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyanAccent.withOpacity(0.25),
                        blurRadius: 14,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "CHALLENGES",
                        style: GoogleFonts.bangers(
                          fontSize: height * 0.05,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: height * 0.03),

                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(tabLabels.length, (i) {
                                final bool isSelected = selectedTab == i;
                                return Padding(
                                  padding: EdgeInsets.only(
                                    bottom: height * 0.02,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedTab = i;
                                      });
                                    },
                                    child: Container(
                                      width: width * 0.36,
                                      padding: EdgeInsets.symmetric(
                                        vertical: height * 0.015,
                                        horizontal: width * 0.02,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color(
                                          0xFF353A82,
                                        ).withOpacity(0.85),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: isSelected
                                              ? Colors.cyanAccent
                                              : Colors.transparent,
                                          width: 2,
                                        ),
                                        boxShadow: isSelected
                                            ? [
                                                BoxShadow(
                                                  color: Colors.cyanAccent
                                                      .withOpacity(0.5),
                                                  blurRadius: 8,
                                                  spreadRadius: 1,
                                                ),
                                              ]
                                            : [],
                                      ),
                                      child: Text(
                                        tabLabels[i],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.bangers(
                                          fontSize: height * 0.03,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),

                            // right side content
                            Expanded(
                              child: Center(
                                child: Text(
                                  selectedTab == 0 ? "NO CHALLENGE" : "NO DATA",
                                  style: GoogleFonts.bangers(
                                    fontSize: height * 0.03,
                                    color: Colors.cyan,
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

                SizedBox(height: height * 0.015),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: height * 0.08,
                    width: width * 0.35,
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06,
                      vertical: height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.016),
                      border: Border.all(color: Colors.cyanAccent, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyanAccent.withOpacity(0.4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 44, 4, 51),
                          const Color.fromARGB(255, 64, 1, 112),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.people_alt_rounded,
                          color: Colors.white,
                          size: width * 0.07,
                        ),
                        SizedBox(width: width * 0.025),
                        Text(
                          "BUY MORE\n  BUDDIES",
                          style: GoogleFonts.bangers(
                            fontSize: height * 0.02,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(),

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
