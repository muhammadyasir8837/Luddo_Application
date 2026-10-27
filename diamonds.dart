import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:luddo_app/screens/diamond/diamond_clipper.dart';
import 'package:luddo_app/screens/diamond/shop_clipper.dart';
import 'package:luddo_app/screens/diamond/shops_clipper.dart';
import 'package:luddo_app/screens/diamond/store_clipper.dart';

class Gold extends StatefulWidget {
  const Gold({super.key});

  @override
  State<Gold> createState() => _GoldState();
}

class _GoldState extends State<Gold> {
  late double height;
  late double width;
  PageController controller = PageController();
  int index = 0;

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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: height,

              color: Colors.deepPurpleAccent.withValues(alpha: 0.7),
            ),
            Container(
              height: height,
              width: width,

              child: Column(
                children: [
                  SizedBox(height: height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: width * 0.04),
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
                            width: 2.5,
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
                  SizedBox(height: height * 0.01),
                  Container(
                    height: height * 0.06,
                    width: width,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.05,
                          width: width * 0.29,

                          child: Stack(
                            children: [
                              Positioned(
                                top: height * 0.005,
                                left: width * 0.06,
                                child: Container(
                                  height: height * 0.029,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      44,
                                      36,
                                      128,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "40",
                                      style: GoogleFonts.bangers(
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: width * 0.005,
                                        fontSize: width * 0.04,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: height * 0.002,
                                left: width * 0.04,
                                child: Container(
                                  height: height * 0.032,
                                  width: width * 0.05,

                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/diamond.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Positioned(
                                top: height * 0.006,
                                left: width * 0.23,
                                child: CircleAvatar(
                                  radius: width * 0.026,
                                  backgroundColor: Colors.green,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: width * 0.05,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: width * 0.03),
                        Container(
                          height: height * 0.05,
                          width: width * 0.35,

                          child: Stack(
                            children: [
                              Positioned(
                                top: height * 0.005,
                                left: width * 0.06,
                                child: Container(
                                  height: height * 0.029,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      44,
                                      36,
                                      128,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "3,000",
                                      style: GoogleFonts.bangers(
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: width * 0.005,
                                        fontSize: width * 0.04,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: height * 0.002,
                                left: width * 0.04,
                                child: Container(
                                  height: height * 0.032,
                                  width: width * 0.05,

                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/diamond.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Positioned(
                                top: height * 0.006,
                                left: width * 0.27,
                                child: CircleAvatar(
                                  radius: width * 0.026,
                                  backgroundColor: Colors.green,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: width * 0.05,
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
                  Container(
                    height: height * 0.12,
                    width: width,

                    child: Stack(
                      children: [
                        Positioned(
                          top: height * 0.04,
                          left: width * 0.3,
                          child: ClipPath(
                            clipper: DiamondClipper(),
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.4,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.04,
                          left: width * 0.325,
                          child: ClipPath(
                            clipper: DiamondClipper(),
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                border: Border.all(
                                  width: width * 0.01,
                                  color: const Color(0xFFF97F00),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "GOLD",
                                  style: GoogleFonts.bangers(
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: width * 0.005,
                                    fontSize: width * 0.06,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: width * 0.2,
                          child: ClipPath(
                            clipper: ShopClipper(),
                            child: Container(
                              height: height * 0.07,
                              width: width * 0.59,
                              color: const Color(0xFFFF0000),
                              child: Padding(
                                padding: EdgeInsets.only(left: width * 0.22),
                                child: Text(
                                  "SHOP",
                                  style: GoogleFonts.bangers(
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: width * 0.005,
                                    fontSize: width * 0.07,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: width * 0.215,
                          top: height * 0.02,
                          child: ClipPath(
                            clipper: ShoptwoClipper(),
                            child: Container(
                              height: height * 0.04,
                              width: width * 0.56,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFFF7A0A), // dark orange
                                    Color(0xFFFF8E0D),
                                    Color(0xFFFFA11A), // highlight
                                    Color(0xFFFF8E0D),
                                    Color(0xFFFF7A0A),
                                  ],
                                  stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.1,
                    width: width * 0.9,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 0;
                            });
                            controller.jumpToPage(0);
                          },
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.18,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.02),
                              border: index == 0
                                  ? Border.all(
                                      color: const Color(0xFF00E5FF),
                                      width: 2.5,
                                    )
                                  : null,

                              boxShadow: index == 0
                                  ? [
                                      BoxShadow(
                                        color: const Color(
                                          0xFF00E5FF,
                                        ).withOpacity(0.8),
                                        blurRadius: 15,
                                        spreadRadius: 2,
                                      ),
                                      BoxShadow(
                                        color: const Color(
                                          0xFF00E5FF,
                                        ).withOpacity(0.4),
                                        blurRadius: 25,
                                        spreadRadius: 3,
                                      ),
                                    ]
                                  : [],

                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF1B174E),
                                  Color(0xFF263E8A),
                                  Color(0xFF3D57A8),
                                  Color(0xFF263E8A),
                                  Color(0xFF1B174E),
                                ],
                                stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                              ),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/yellow.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 1;
                            });
                            controller.jumpToPage(1);
                          },
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.18,

                            decoration: BoxDecoration(
                              border: index == 1
                                  ? Border.all(
                                      color: const Color(0xFF00E5FF),
                                      width: 2.5,
                                    )
                                  : null,

                              boxShadow: index == 1
                                  ? [
                                      BoxShadow(
                                        color: const Color(
                                          0xFF00E5FF,
                                        ).withOpacity(0.8),
                                        blurRadius: 15,
                                        spreadRadius: 2,
                                      ),
                                      BoxShadow(
                                        color: const Color(
                                          0xFF00E5FF,
                                        ).withOpacity(0.4),
                                        blurRadius: 25,
                                        spreadRadius: 3,
                                      ),
                                    ]
                                  : [],

                              borderRadius: BorderRadius.circular(width * 0.02),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF1B174E),
                                  Color(0xFF263E8A),
                                  Color(0xFF3D57A8),
                                  Color(0xFF263E8A),
                                  Color(0xFF1B174E),
                                ],
                                stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                              ),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/ring.png'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 2;
                            });
                            controller.jumpToPage(2);
                          },
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.18,

                            decoration: BoxDecoration(
                              border: index == 2
                                  ? Border.all(
                                      color: const Color(0xFF00E5FF),
                                      width: 2.5,
                                    )
                                  : null,

                              boxShadow: index == 2
                                  ? [
                                      BoxShadow(
                                        color: const Color(
                                          0xFF00E5FF,
                                        ).withOpacity(0.8),
                                        blurRadius: 15,
                                        spreadRadius: 2,
                                      ),
                                      BoxShadow(
                                        color: const Color(
                                          0xFF00E5FF,
                                        ).withOpacity(0.4),
                                        blurRadius: 25,
                                        spreadRadius: 3,
                                      ),
                                    ]
                                  : [],
                              borderRadius: BorderRadius.circular(width * 0.02),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF1B174E),
                                  Color(0xFF263E8A),
                                  Color(0xFF3D57A8),
                                  Color(0xFF263E8A),
                                  Color(0xFF1B174E),
                                ],
                                stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                              ),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/sound.png'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = 3;
                            });
                            controller.jumpToPage(3);
                          },
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.18,

                            decoration: BoxDecoration(
                              border: index == 3
                                  ? Border.all(
                                      color: const Color(0xFF00E5FF),
                                      width: 2.5,
                                    )
                                  : null,

                              boxShadow: index == 3
                                  ? [
                                      BoxShadow(
                                        color: const Color(
                                          0xFF00E5FF,
                                        ).withOpacity(0.8),
                                        blurRadius: 15,
                                        spreadRadius: 2,
                                      ),
                                      BoxShadow(
                                        color: const Color(
                                          0xFF00E5FF,
                                        ).withOpacity(0.4),
                                        blurRadius: 25,
                                        spreadRadius: 3,
                                      ),
                                    ]
                                  : [],
                              borderRadius: BorderRadius.circular(width * 0.02),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF1B174E),
                                  Color(0xFF263E8A),
                                  Color(0xFF3D57A8),
                                  Color(0xFF263E8A),
                                  Color(0xFF1B174E),
                                ],
                                stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                              ),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/persent.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: height * 0.40,
                      width: width,

                      child: PageView(
                        controller: controller,
                        //scrollDirection: Axis.vertical,
                        // physics: NeverScrollableScrollPhysics(),
                        onPageChanged: (value) {
                          print(value);
                          setState(() {
                            index = value;
                          });
                        },
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: height * 0.4,
                            width: width,

                            child: Column(
                              children: [
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "50 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/mcoins.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "60 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/coinss.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "70 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/daigi.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "80 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/yellow_coins.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "90 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/box_coins.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "95 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/land_coins.png',
                                              ),
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
                          Container(
                            height: height * 0.4,
                            width: width,

                            child: Column(
                              children: [
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "50 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.001,
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/gem.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "60 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/mplace.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "70 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/group.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "80 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        left: width * 0.01,
                                        top: height * 0.004,
                                        right: width * 0.76,
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'images/trophy.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "90 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        right: width * 0.74,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/home.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "95 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        right: width * 0.74,
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/trolley.png',
                                              ),
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
                          Container(
                            height: height * 0.4,
                            width: width,

                            child: Column(
                              children: [
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "03 days",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.0,
                                        right: width * 0.74,
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/dices.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "60 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.1,
                                        right: width * 0.74,
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'images/mic.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "70 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.00,
                                        right: width * 0.74,
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/mic.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.1,
                                                    ),
                                                    Text(
                                                      "80 GEMS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.00,
                                        right: width * 0.74,
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'images/mic.png',
                                              ),
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
                          Container(
                            height: height * 0.4,
                            width: width,

                            child: Column(
                              children: [
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.06,
                                                    ),
                                                    Text(
                                                      "1000 COINS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/gem.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.06,
                                                    ),
                                                    Text(
                                                      "1000 COINS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/gem.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.87,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF3E884),
                                    borderRadius: BorderRadius.circular(
                                      width * 0.02,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.008),
                                          Row(
                                            children: [
                                              SizedBox(width: width * 0.05),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.deepOrange,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.02,
                                                      ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.06,
                                                    ),
                                                    Text(
                                                      "1000 COINS",
                                                      style:
                                                          GoogleFonts.bangers(
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            letterSpacing:
                                                                width * 0.005,
                                                            fontSize:
                                                                width * 0.03,
                                                            color: Colors
                                                                .deepOrange,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: width * 0.3),
                                              Container(
                                                height: height * 0.032,
                                                width: width * 0.23,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        width * 0.05,
                                                      ),
                                                  border: Border.all(
                                                    color: const Color(
                                                      0xFFFDFDFD,
                                                    ), // white outline
                                                    width: 1,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                        0xFF2E3600,
                                                      ).withOpacity(0.55),
                                                      blurRadius: 6,
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ),
                                                    ),
                                                  ],
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color(
                                                        0xFFA5B625,
                                                      ), // top highlight
                                                      Color(0xFF788C00),
                                                      Color(
                                                        0xFF556C00,
                                                      ), // bottom dark green
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "RS 345.89",
                                                    style: GoogleFonts.bangers(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      letterSpacing:
                                                          width * 0.005,
                                                      fontSize: width * 0.04,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.005,
                                        child: Container(
                                          height: height * 0.04,
                                          width: width * 0.15,

                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/gem.png',
                                              ),
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
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.049),

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
          ],
        ),
      ),
    );
  }
}
