import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/colors/app_colors.dart';

class EntryFee extends StatefulWidget {
  const EntryFee({super.key});

  @override
  State<EntryFee> createState() => _EntryFeeState();
}

class _EntryFeeState extends State<EntryFee> {
  final List<Color> borderColors = [
    Colors.cyan,
    Colors.red,
    Colors.yellow,
    Colors.amber,
  ];

  int selectedColorIndex = 0;

  int selectedPlayers = 2;
  int entryFee = 1000;

  static const int minFee = 500;
  static const int maxFee = 10000;
  static const int feeStep = 500;

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
            ),
            child: Column(
              children: [
                _buildBackButton(),
                _buildTopStats(),
                SizedBox(height: height * 0.035),
                _buildColorSelector(),
                SizedBox(height: height * 0.035),
                _buildPlayerSelector(),
                SizedBox(height: height * 0.05),
                Text(
                  "ENTRY FEE",
                  style: GoogleFonts.bangers(
                    fontSize: height * 0.04,
                    color: AppColors.white,
                    letterSpacing: width * 0.007,
                  ),
                ),
                SizedBox(height: height * 0.02),
                _buildEntryFeeStepper(),
                SizedBox(height: height * 0.04),
                _buildPlayButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return SizedBox(
      height: height * 0.09,
      width: width,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Navigator.maybePop(context),
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
        ],
      ),
    );
  }

  Widget _buildTopStats() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _diamond(value: "40", iconAsset: "assets/images/diamond.png"),
        SizedBox(width: width * 0.1),
        _bitcoin(value: "3,000", iconAsset: "assets/images/bitcoin.png"),
      ],
    );
  }

  Widget _bitcoin({required String value, required String iconAsset}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: height * 0.035,
          width: width * 0.22,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(height * 0.02),
          ),
          child: Center(
            child: Text(
              value,
              style: GoogleFonts.bangers(
                fontSize: height * 0.02,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          left: -width * 0.014,
          top: 0,
          bottom: 0,
          child: Center(child: Image.asset(iconAsset, height: height * 0.08)),
        ),
        Positioned(
          right: -width * 0.015,
          top: 0,
          bottom: 0,
          child: Container(
            height: height * 0.04,
            width: width * 0.04,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 5, 240, 13),
            ),
            child: Icon(Icons.add, color: Colors.white, size: width * 0.04),
          ),
        ),
      ],
    );
  }

  Widget _diamond({required String value, required String iconAsset}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: height * 0.035,
          width: width * 0.22,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(height * 0.02),
          ),
          child: Center(
            child: Text(
              value,
              style: GoogleFonts.bangers(
                fontSize: height * 0.02,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          left: -width * 0.025,
          top: 0,
          bottom: 0,
          child: Center(child: Image.asset(iconAsset, height: height * 0.08)),
        ),
        Positioned(
          right: -width * 0.014,
          top: 0,
          bottom: 0,
          child: Container(
            height: height * 0.04,
            width: width * 0.04,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 5, 240, 13),
            ),
            child: Icon(Icons.add, color: Colors.white, size: width * 0.04),
          ),
        ),
      ],
    );
  }

  Widget _buildColorSelector() {
    return Container(
      height: height * 0.15,
      width: width * 0.85,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.cyanAccent),
        borderRadius: BorderRadius.circular(width * 0.04),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 0, 22, 39),
            const Color.fromARGB(255, 19, 1, 92),
            const Color.fromARGB(255, 0, 22, 39),
          ],
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: width * 0.004,
            blurStyle: BlurStyle.inner,
            blurRadius: width * 0.02,
            color: Colors.cyan,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SELECT YOUR COLOR",
            style: GoogleFonts.bangers(
              fontSize: width * 0.05,
              color: Colors.cyanAccent,
              wordSpacing: width * 0.01,
              letterSpacing: width * 0.01,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(borderColors.length, (index) {
              final bool isSelected = selectedColorIndex == index;
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedColorIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  height: height * 0.06,
                  width: width * 0.06,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: borderColors[index],
                    border: Border.all(
                      color: isSelected ? Colors.white : Colors.red,
                      width: width * 0.002,
                    ),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: borderColors[index].withValues(alpha: 0.8),
                              blurRadius: width * 0.01,
                              spreadRadius: width * 0.002,
                            ),
                          ]
                        : null,
                  ),

                  child: isSelected
                      ? Icon(
                          Icons.check,
                          size: width * 0.04,
                          color: _contrastColor(borderColors[index]),
                        )
                      : null,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Color _contrastColor(Color background) {
    final brightness = ThemeData.estimateBrightnessForColor(background);
    return brightness == Brightness.dark ? Colors.white : Colors.black;
  }

  Widget _buildPlayerSelector() {
    return Container(
      height: height * 0.2,
      width: width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(width: width * 0.002, color: Colors.cyanAccent),
        borderRadius: BorderRadius.circular(height * 0.02),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 0, 22, 39),
            const Color.fromARGB(255, 19, 1, 92),
            const Color.fromARGB(255, 0, 22, 39),
          ],
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: width * 0.005,
            blurStyle: BlurStyle.inner,
            blurRadius: width * 0.03,
            color: Colors.cyan,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SELECT PLAYER",
            style: GoogleFonts.bangers(
              fontSize: height * 0.03,
              color: Colors.cyanAccent,
              wordSpacing: width * 0.03,
              letterSpacing: width * 0.01,
            ),
          ),
          SizedBox(height: height * 0.008),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _playerOption(label: "2P", players: 2),
              SizedBox(width: width * 0.04),
              _playerOption(label: "4P", players: 4),
            ],
          ),
        ],
      ),
    );
  }

  Widget _playerOption({required String label, required int players}) {
    final bool isSelected = selectedPlayers == players;
    return InkWell(
      onTap: () => setState(() => selectedPlayers = players),
      child: Container(
        height: height * 0.09,
        width: width * 0.17,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 56, 33, 160),
          borderRadius: BorderRadius.circular(width * 0.017),
          border: isSelected
              ? Border.all(color: Colors.cyan, width: width * 0.0055)
              : null,
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.bangers(
              fontSize: height * 0.04,
              color: Colors.white,
              letterSpacing: width * 0.007,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEntryFeeStepper() {
    return Container(
      height: height * 0.045,
      width: width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height * 0.01),
        color: const Color.fromARGB(255, 3, 30, 51),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                entryFee = (entryFee - feeStep).clamp(minFee, maxFee);
              });
            },
            child: Container(
              height: height * 0.025,
              width: width * 0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.004),
                color: Colors.green,
              ),
              child: Icon(Icons.remove, size: width * 0.03),
            ),
          ),
          Text(
            "$entryFee COINS",
            style: GoogleFonts.bangers(
              fontSize: height * 0.02,
              color: Colors.white,
              wordSpacing: width * 0.007,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                entryFee = (entryFee + feeStep).clamp(minFee, maxFee);
              });
            },
            child: Container(
              height: height * 0.025,
              width: width * 0.05,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 3, 226, 11),
              ),
              child: const Icon(Icons.add, size: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: height * 0.06,
        width: width * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height * 0.01),
        ),
        child: Image(
          image: AssetImage("assets/images/play.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
