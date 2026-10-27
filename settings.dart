import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/colors/app_colors.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late double height, width;
  final List<String> languages = ["English", "Urdu", "Arabic", "Turkish"];
  bool isCheckBox = false;
  String? dropDown;

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
            color: AppColors.deepPurple,
            padding: EdgeInsets.only(
              top: height * 0.05,
              left: width * 0.05,
              right: width * 0.05,
            ),
            child: Column(
              children: [
                // Top Action Buttons
                Align(
                  alignment: Alignment.topLeft,
                  child: _topButton(
                    Icons.undo,
                    onTap: () => Navigator.pop(context),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _topButton(Icons.thumb_up),
                    _topButton(Icons.share),
                  ],
                ),
                SizedBox(height: height * 0.02),

                // Main Settings Box
                Container(
                  height: height * 0.66,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.cyan,
                      width: width * 0.004,
                    ),
                    borderRadius: BorderRadius.circular(height * 0.008),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.cardBorder,
                        spreadRadius: width * 0.002,
                        blurRadius: width * 0.008,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "SETTINGS",
                        style: GoogleFonts.bangers(
                          fontSize: width * 0.06,
                          color: AppColors.cyan,
                          letterSpacing: width * 0.01,
                        ),
                      ),

                      // Rows
                      _rowTile(
                        "GET YOUR PROFILE VERIFIED",
                        actionText: "GET VERIFIED",
                        bg: AppColors.lightGrey,
                      ),
                      _rowTile(
                        "AUDIO",
                        bg: AppColors.deepsSky,
                        customTrailing: _checkbox(),
                      ),
                      _rowTile(
                        "TUTORIAL",
                        actionText: "PLAY",
                        bg: AppColors.lightGrey,
                      ),
                      _rowTile(
                        "LANGUAGES",
                        bg: AppColors.deepsSky,
                        customTrailing: _languageDropdown(),
                      ),
                      _rowTile(
                        "THEMES",
                        actionText: "SELECT",
                        bg: AppColors.lightGrey,
                      ),
                      _rowTile(
                        "STORE",
                        actionText: "VIEW",
                        bg: AppColors.deepsSky,
                      ),
                      _rowTile(
                        "SUPPORT EMAIL",
                        bg: AppColors.lightGrey,
                        customTrailing: _supportTrailing(),
                      ),
                      _rowTile(
                        "GAME",
                        actionText: "RULES",
                        bg: AppColors.deepsSky,
                      ),
                      _rowTile(
                        "PRIVACY POLICY",
                        actionText: "VIEW",
                        bg: AppColors.lightGrey,
                      ),
                      _rowTile(
                        "LEADERBOARD",
                        actionText: "VIEW",
                        bg: AppColors.deepsSky,
                      ),
                      _rowTile("FIND US ON", bg: AppColors.lightGrey),

                      SizedBox(height: height * 0.007),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "+ ",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: width * 0.04,
                              ),
                            ),
                            TextSpan(
                              text: "MORE GAMES",
                              style: GoogleFonts.bangers(
                                fontSize: height * 0.02,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _topButton(IconData icon, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height * 0.04,
        width: width * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width * 0.03),
          border: Border.all(color: AppColors.neonBlue, width: width * 0.005),
          boxShadow: [
            BoxShadow(
              blurRadius: width * 0.002,
              color: AppColors.cyan,
              spreadRadius: width * 0.001,
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.sky, AppColors.lightGrey],
          ),
        ),
        child: Icon(icon, size: width * 0.06, color: Colors.cyan),
      ),
    );
  }

  Widget _rowTile(
    String title, {
    String? actionText,
    Widget? customTrailing,
    required Color bg,
  }) {
    return Container(
      height: height * 0.05,
      width: width * 0.75,
      color: bg,
      padding: EdgeInsets.symmetric(horizontal: width * 0.025),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.bangers(
              fontSize: height * 0.022,
              color: Colors.white,
              letterSpacing: width * 0.003,
            ),
          ),
          const Spacer(),
          if (actionText != null)
            Text(
              actionText,
              style: GoogleFonts.bangers(
                fontSize: height * 0.016,
                color: Colors.cyanAccent,
                letterSpacing: width * 0.004,
              ),
            ),
          if (customTrailing != null) customTrailing,
        ],
      ),
    );
  }

  Widget _checkbox() {
    return Checkbox(
      value: isCheckBox,
      fillColor: WidgetStateColor.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? AppColors.bgBottom
            : AppColors.bgBottom,
      ),
      side: BorderSide(color: AppColors.cyan, width: width * 0.002),
      checkColor: Colors.green,
      onChanged: (val) => setState(() => isCheckBox = val ?? false),
    );
  }

  Widget _languageDropdown() {
    return Row(
      children: [
        Text(
          dropDown?.toUpperCase() ?? "ENGLISH",
          style: GoogleFonts.bangers(
            fontSize: height * 0.016,
            color: Colors.cyanAccent,
          ),
        ),
        SizedBox(
          width: width * 0.08,
          child: DropdownButtonFormField<String>(
            initialValue: dropDown,
            isExpanded: true,
            items: languages
                .map((t) => DropdownMenuItem(value: t, child: Text(t)))
                .toList(),
            onChanged: (val) => setState(() => dropDown = val),
          ),
        ),
      ],
    );
  }

  Widget _supportTrailing() {
    return Row(
      children: [
        Text(
          "FAQ",
          style: GoogleFonts.bangers(
            fontSize: height * 0.016,
            color: Colors.cyanAccent,
          ),
        ),
        SizedBox(width: width * 0.05),
        Text(
          "COMPOSE",
          style: GoogleFonts.bangers(
            fontSize: height * 0.016,
            color: Colors.cyanAccent,
          ),
        ),
      ],
    );
  }
}
