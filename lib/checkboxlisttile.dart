import 'package:flutter/material.dart';

class CheckBoxListTiles extends StatefulWidget {
  @override
  _CheckBoxListTilesState createState() => _CheckBoxListTilesState();
}

class _CheckBoxListTilesState extends State<CheckBoxListTiles> {
  bool? _val2 = false;

  void _value2Changed(bool? value) {
    setState(() {
      _val2 = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
                  value: _val2,
                  onChanged: _value2Changed,
                  activeColor: Colors.purple,
                  title: Text("CheckBoxListTile"),
                  subtitle: Text("SubTitle - checkbox"),
                  controlAffinity: ListTileControlAffinity.leading,
                  secondary: Icon(Icons.archive),
                );
  }
}