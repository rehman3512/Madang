import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget {
  static Widget h1(String text, Color color, BuildContext context) {
    return Text(
      text,
      softWrap: true,
      maxLines: null,
      style: GoogleFonts.poppins(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 38,
      ),
    );
  }

  static Widget h2(String text, Color color, BuildContext context) {
    return Text(
      text,
      softWrap: true,
      maxLines: null,
      style: GoogleFonts.poppins(
        color: color,
        fontWeight: FontWeight.w800,
        fontSize: 32,
      ),
    );
  }

  static Widget h3(String text, Color color, BuildContext context) {
    return Text(
      text,
      softWrap: true,
      maxLines: null,
      style: GoogleFonts.poppins(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 26,
      ),
    );
  }

  static Widget h4(String text, Color color, BuildContext context) {
    return Text(
      text,
      softWrap: true,
      maxLines: null,
      style: GoogleFonts.poppins(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    );
  }

  static Widget h5(String text, Color color, BuildContext context) {
    return Text(
      text,
      softWrap: true,
      maxLines: null,
      style: GoogleFonts.poppins(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}
