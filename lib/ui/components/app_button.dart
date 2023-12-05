import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockx/resources/ui_resources.dart';

Widget appButton(String text, void Function() onClick ){
  return ElevatedButton(
    onPressed: onClick,
    style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondaryColor,
        foregroundColor: AppColors.surfaceColor, 
        elevation: 2, 
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
      ),
      minimumSize: const Size.fromHeight(50)
    ),
    child: Text(
        text,
        style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: AppColors.surfaceColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal
            )
        )
    ),
  );
}