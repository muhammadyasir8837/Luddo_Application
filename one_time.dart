import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luddo_app/colors/app_colors.dart';

class OneTime extends StatefulWidget {
  const OneTime({super.key});

  @override
  State<OneTime> createState() => _OneTimeState();
}

class _OneTimeState extends State<OneTime> {
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
            child: Center(child: _buildMainOfferDialog()),
          ),
        ),
      ),
    );
  }

  Widget _buildMainOfferDialog() {
    return SizedBox(
      height: height * 0.56,
      width: width * 0.9,

      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: height * 0.01),
                  _innerOfferTitle,
                  _buildOffersRow(),
                  _bottomPriceText,
                ],
              ),
            ),
          ),

          _buildCenteredTopHeader(),

          _buildAbsoluteCloseButton(),
        ],
      ),
    );
  }

  Widget _buildCenteredTopHeader() {
    return Positioned(
      top: (height * 0.03),
      child: Text(
        "ONE TIME OFFER",
        textAlign: TextAlign.center,
        style: GoogleFonts.bangers(
          fontSize: width * 0.08,
          color: AppColors.neonBlue,
          letterSpacing: width * 0.01,
        ),
      ),
    );
  }

  Widget _buildAbsoluteCloseButton() {
    final double closeButtonSize = height * 0.05;

    final double innerCardOffset = width * 0.02;
    final double halfSize = closeButtonSize / 2;

    return Positioned(
      top: (height * 0.06) - halfSize,

      right: innerCardOffset - halfSize,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: closeButtonSize,
          width: closeButtonSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.white, width: width * 0.004),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.red, AppColors.redAccent, AppColors.deepRed],
            ),
          ),
          child: const Icon(
            Icons.close,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget get _innerOfferTitle {
    return Text(
      "ONE TIME OFFER",
      style: GoogleFonts.bangers(
        fontSize: width * 0.075,
        color: AppColors.white,
        wordSpacing: width * 0.01,
      ),
    );
  }

  Widget _buildOffersRow() {
    return SizedBox(
      height: height * 0.25,
      width: width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildItemCard(amountLabel: "10,000", priceLabel: "RS 241.09"),
          _buildItemCard(
            amountLabel: "20",
            priceLabel: "RS 241.09",
            imageAssetPath: "assets/images/diamonds.png",
          ),
        ],
      ),
    );
  }

  Widget _buildItemCard({
    required String amountLabel,
    required String priceLabel,
    String? imageAssetPath,
  }) {
    return SizedBox(
      height: height * 0.22,
      width: width * 0.24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height * 0.14,
            width: width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.02),
              color: AppColors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (imageAssetPath != null) ...[
                  Container(
                    height: height * 0.065,
                    width: width * 0.14,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageAssetPath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ] else ...[
                  SizedBox(height: height * 0.04),
                ],
                Text(
                  amountLabel,
                  style: GoogleFonts.bangers(
                    fontSize: width * 0.04,
                    color: AppColors.white,
                    letterSpacing: width * 0.005,
                  ),
                ),
              ],
            ),
          ),
          Text(
            priceLabel,
            style: GoogleFonts.bangers(
              fontSize: width * 0.04,
              color: AppColors.neonBlue,
              letterSpacing: width * 0.006,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _bottomPriceText {
    return Text(
      "RS 88.19",
      style: GoogleFonts.bangers(
        fontSize: width * 0.06,
        color: AppColors.white,
        letterSpacing: width * 0.005,
        wordSpacing: width * 0.006,
      ),
    );
  }
}
