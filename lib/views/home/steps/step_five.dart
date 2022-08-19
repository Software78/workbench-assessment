import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StepFive extends StatelessWidget {
  const StepFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 142,
      decoration: BoxDecoration(
        color: const Color(0xff38CB89).withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          const Expanded(child: SizedBox()),
          CircleAvatar(
            radius: 35,
            backgroundColor: const Color(0xff38CB89).withOpacity(0.1),
            child: SvgPicture.asset('assets/svg/picture.svg'),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Add farmer profile picture',
            style: GoogleFonts.mulish(
                textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1D925D))),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
