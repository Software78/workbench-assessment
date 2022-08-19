import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class SmallModalText extends StatelessWidget {
  const SmallModalText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: blackTextColor,
        ),
      ),
    );
  }
}

class SmallModalContainerText extends StatelessWidget {
  const SmallModalContainerText({Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: neutral400,
        ),
      ),
    );
  }
}

class BottomTextThick extends StatelessWidget {
  const BottomTextThick({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: const Color(0xff54565B),
      ),
    );
  }
}

class BottomTextThin extends StatelessWidget {
  const BottomTextThin({Key? key, required this.text}) : super(key: key);

    final String text;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: const Color(0xff54565B),
      ),
    );
  }
}
