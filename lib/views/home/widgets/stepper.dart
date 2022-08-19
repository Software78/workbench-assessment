import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modal/controller.dart';
import '../steps/step_five.dart';
import '../steps/step_four.dart';
import '../steps/step_one.dart';
import '../steps/step_three.dart';
import '../steps/step_two.dart';

class MyStepper extends StatelessWidget {
  MyStepper({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      controlsBuilder: (context, details) => const SizedBox(),
      elevation: 0,
      type: StepperType.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      currentStep: currentIndex,
      steps: <Step>[
        Step(
          title: const Text(''),
          content: const StepOne(),
          isActive: currentIndex >= 0,
        ),
        Step(
          title: const Text(''),
          content: const StepTwo(),
          isActive: currentIndex >= 1,
        ),
        Step(
          title: const Text(''),
          content: StepThree(
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => const ModalScreen(),
              );
            },
          ),
          isActive: currentIndex >= 2,
        ),
        Step(
          title: const Text(''),
          content: const StepFour(),
          isActive: currentIndex >= 3,
        ),
        Step(
          title: const Text(''),
          content: const StepFive(),
          isActive: currentIndex >= 4,
        ),
      ],
    );
  }
}
