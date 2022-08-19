import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/dropdown.dart';
import '../widgets/textfield.dart';

class StepThree extends StatelessWidget {
  const StepThree({Key? key, this.onPressed}) : super(key: key);

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const DropDownWidget(
          title: 'Co-Operative',
          list: [
            'Glory',
            'Honour',
            'Power',
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const DropDownWidget(title: 'Primary Crops', list: [
          'Cocoa',
          'Cowpea',
          'Mucuna',
          'Soybean',
        ]),
        const SizedBox(
          height: 20,
        ),
        const FormFieldWidget(title: 'Secondary Crops'),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 54,
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              SvgPicture.asset('assets/svg/map.svg'),
              const SizedBox(
                width: 10,
              ),
              const Text(
                '4 coordinates added',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Expanded(child: SizedBox()),
              TextButton(
                onPressed: onPressed,
                child: Text(
                  'Click to add points',
                  style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                      color: Color(0xff1D925D),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
