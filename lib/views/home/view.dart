import 'package:assessment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/stateless_view.dart';
import 'controller.dart';
import 'widgets/buttons.dart';
import 'widgets/stepper.dart';
import 'widgets/text.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(HomeController state, this.currentIndex, {Key? key})
      : super(state, key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: currentIndex == 0
            ? null
            : GestureDetector(
                onTap: () => controller.decrement(),
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.adaptive.arrow_back,
                    color: const Color(0xff292D32),
                  ),
                ),
              ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xff54565B).withOpacity(0.1),
              ),
              child: SvgPicture.asset('assets/svg/action.svg'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: BodyText(text: '   Register A new Farmer'),
          ),
          const SizedBox(
            height: 7,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SmallBodyText(
              text: '     ${controller.strings[currentIndex]}',
            ),
          ),
          Expanded(
            child: MyStepper(
              currentIndex: currentIndex,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          color: bgColor,
          height: 78,
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 28),
              NavButton(
                isForward: false,
                onPressed:
                    currentIndex != 0 ? () => controller.decrement() : null,
              ),
              const Expanded(child: SizedBox()),
              NavButton(
                isForward: true,
                isLast: currentIndex == 4 ? true : false,
                onPressed:
                    currentIndex != 4 ? () => controller.increment() : () {},
              ),
              const SizedBox(width: 28),
            ],
          ),
        ),
      ),
    );
  }
}
