import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockx/resources/ui_resources.dart';

Widget settingsCard(String image, String text, String textInfo) {
  return Card(
    color: AppColors.surfaceColor,
    surfaceTintColor: AppColors.surfaceColor,
    elevation: 0.8,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: AppColors.borderColor, width: 0.3)),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(image),
            height: 24.0,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
              text,
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal))),
          const SizedBox(
            height: 8.0,
          ),
          Text(
              textInfo,
              softWrap: true,
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal)))
        ],
      ),
    ),
  );
}
