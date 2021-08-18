import 'package:flutter/material.dart';

class SwitchListTiles extends StatefulWidget {
  @override
  _SwitchListTilesState createState() => _SwitchListTilesState();
}

class _SwitchListTilesState extends State<SwitchListTiles> {
  bool _v2 = false;
  void _value2SwitchChanged(bool value) {
    setState(() {
      _v2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _v2,
      onChanged: _value2SwitchChanged,
      controlAffinity: ListTileControlAffinity.trailing,
      secondary: Icon(Icons.switch_account),
      subtitle: Text("Sub Title"),
      activeColor: Colors.purple,
      title: Text(
        "Switch List Tile",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
