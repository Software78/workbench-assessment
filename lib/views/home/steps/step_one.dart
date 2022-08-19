import 'package:flutter/material.dart';

import '../widgets/dropdown.dart';
import '../widgets/textfield.dart';

class StepOne extends StatelessWidget {
  const StepOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        DropDownWidget(
          title: 'Title',
          list: [
            'Mr',
            'Mrs',
          ],
        ),
        SizedBox(
          height: 20,
        ),
        FormFieldWidget(
          title: 'Surname',
        ),
        SizedBox(
          height: 20,
        ),
        FormFieldWidget(title: 'First Name'),
        SizedBox(
          height: 20,
        ),
        DropDownWidget(title: 'Gender', list: [
          'Male',
          'Female',
        ]),
        SizedBox(
          height: 20,
        ),
        DropDownWidget(title: 'Marital Status', list: [
          'Single',
          'Married',
          'Divorced',
          'Widower',
        ])
      ],
    );
  }
}
