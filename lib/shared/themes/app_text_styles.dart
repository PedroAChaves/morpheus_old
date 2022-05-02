import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class TextStyles {
  static final emailText = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );
  static final titleHome = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.textWhite,
  );
  static final titleEvent = GoogleFonts.nunito(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.textWhite,
  );
  static final facebookAccount = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textWhite,
  );
  static final googleAccount = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textBlack,
  );
}
