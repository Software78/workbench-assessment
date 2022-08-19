import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  const MyFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: Color(0xff38cb89),
      decoration: InputDecoration(
        // labelText: 'Password',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff38cb89),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffD1D5DB),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff38cb89),
            width: 2,
          ),
        ),
      ),
    );
  }
}

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(title),
        ),
        const SizedBox(
          height: 5,
        ),
        const MyFormField(),
      ],
    );
  }
}
