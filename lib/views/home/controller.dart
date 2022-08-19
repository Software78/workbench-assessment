// ignore_for_file: must_be_immutable

import 'package:assessment/bloc/stepper/stepper_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen> {
  List<String> strings = [
    'Personal Information',
    'Geographical information',
    'Farm information',
    'Bank information',
    'Add profile picture',
  ];

  increment() {
    context.read<StepperBloc>().add(const Increment());
  }

  decrement() {
    context.read<StepperBloc>().add(const Decrement());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StepperBloc, StepperInitial>(
      builder: (context, state) {
        return HomeView(this, state.currentIndex);
      },
    );
  }
}
