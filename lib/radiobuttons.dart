import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  const RadioButtons({Key? key}) : super(key: key);

  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  int? _value1 = 0;
  void _value1RadioChanged(int? value) {
    setState(() {
      _value1 = value;
    });
  }

  Widget makeRadios() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(
          Radio(value: i, groupValue: _value1, onChanged: _value1RadioChanged));
    }
    Column column = Column(
      children: list,
    );
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return makeRadios();
  }
}
