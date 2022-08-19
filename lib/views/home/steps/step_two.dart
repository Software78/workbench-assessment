import 'package:flutter/material.dart';

import '../widgets/dropdown.dart';
import '../widgets/textfield.dart';

class StepTwo extends StatelessWidget {
  const StepTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        FormFieldWidget(title: 'House Address'),
        SizedBox(
          height: 20,
        ),
        DropDownWidget(title: 'State of Residence', list: [
          'Abuja',
          'Lagos',
          'Oyo',
        ]),
        SizedBox(
          height: 20,
        ),
        DropDownWidget(title: 'Local Government', list: [
          'Ibarapa',
          'Wuse',
          'Ikeja',
        ]),
        SizedBox(
          height: 20,
        ),
        DropDownWidget(title: 'State of Origin', list: [
          'Abuja',
          'Lagos',
          'Oyo',
        ]),
        SizedBox(
          height: 20,
        ),
        DropDownWidget(title: 'LGA of Origin', list: [
          'Ibarapa',
          'Wuse',
          'Ikeja',
        ]),
      ],
    );
  }
}
