import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

myStyle(double size, [Color ?clr, FontWeight ?fw]){
  return GoogleFonts.nunito(
      fontSize: size,
      color: clr,
      fontWeight: fw
  );
}