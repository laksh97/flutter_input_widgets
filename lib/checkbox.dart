import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? _val1 = false;

    void _value1Changed(bool? value) {
    setState(() {
      _val1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: _val1, onChanged: _value1Changed);
  }
}