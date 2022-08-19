import 'package:assessment/bloc/location/location_bloc.dart';
import 'package:assessment/services/location_service.dart';
import 'package:assessment/views/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/stepper/stepper_bloc.dart';
import 'utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocationService().getPermissions();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<StepperBloc>(
          create: (context) => StepperBloc(),
        ),
        BlocProvider<LocationBloc>(
          create: (context) => LocationBloc(),
        ),
      ],
      child: MaterialApp(
        home: const HomeScreen(), 
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: lightGreen,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
