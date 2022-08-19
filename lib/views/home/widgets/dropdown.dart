import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    Key? key,
    required this.title,
    required this.list,
  }) : super(key: key);

  final String title;
  final List<String> list;

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
        MyDropDown(
          list: list,
        ),
      ],
    );
  }
}

class MyDropDown extends StatelessWidget {
  const MyDropDown({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
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
      items: list.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (index) {},
    );
  }
}
