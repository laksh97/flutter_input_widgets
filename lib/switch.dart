import 'package:flutter/material.dart';

class Switchs extends StatefulWidget {
  @override
  _SwitchsState createState() => _SwitchsState();
}

class _SwitchsState extends State<Switchs> {
  bool _v1 = false;
  void _value1SwitchChanged(bool value) {
    setState(() {
      _v1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Switch(value: _v1, onChanged: _value1SwitchChanged);
  }
}
