import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockx/resources/ui_resources.dart';

Widget listItem(String imageLogo, String stockName, String stockCompany, String amount, String difference) {
  return Card(
    color: AppColors.surfaceColor,
    surfaceTintColor: AppColors.surfaceColor,
    elevation: 0.8,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: AppColors.borderColor, width: 0.3)
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.surfaceColor,
                border: Border.all(color: AppColors.borderColor, width: 1)
            ),
            child: ClipOval(
              child: Image(
                image: AssetImage(imageLogo),
                width: 6,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    stockName,
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal
                        )
                    )
                ),
                const SizedBox(height: 5.0),
                Text(
                    stockCompany,
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.alternateTextColor,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal
                        )
                    )
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    amount,
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal
                        )
                    )
                ),
                const SizedBox(height: 5.0),
                Text(
                    difference,
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color(0xFFE20000),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal
                        )
                    )
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

