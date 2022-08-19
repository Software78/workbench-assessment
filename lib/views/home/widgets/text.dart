import 'package:assessment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    Key? key,
    required this.text,
    required this.isWhite,
  }) : super(key: key);

  final bool isWhite;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(isWhite ? 0xffffffff : 0xff54565B),
        ),
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class SmallBodyText extends StatelessWidget {
  const SmallBodyText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: fadedGrey,
        ),
      ),
    );
  }
}
