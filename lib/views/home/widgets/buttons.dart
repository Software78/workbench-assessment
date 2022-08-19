import 'package:assessment/utils/colors.dart';
import 'package:flutter/material.dart';

import 'text.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    Key? key,
    required this.isForward,
    required this.onPressed,
    this.isLast = false,
  }) : super(key: key);

  final bool isForward;
  final bool isLast;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 97,
      height: 58,
      child: MaterialButton(
        color: isForward ? workGreen : whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: BorderSide(
            color: isForward ? workGreen : brandPrimary,
          ),
        ),
        onPressed: onPressed,
        child: ButtonText(
          isWhite: isForward,
          text: isForward
              ? isLast
                  ? 'Finish'
                  : 'Next'
              : 'Back',
        ),
      ),
    );
  }
}
