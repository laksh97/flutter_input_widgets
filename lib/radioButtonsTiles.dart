import 'package:flutter/material.dart';

class RadioButtonsListTile extends StatefulWidget {
  const RadioButtonsListTile({Key? key}) : super(key: key);

  @override
  _RadioButtonsListTileState createState() => _RadioButtonsListTileState();
}

class _RadioButtonsListTileState extends State<RadioButtonsListTile> {
  int? _value2 = 0;
  void _value2RadioChanged(int? value) {
    setState(() {
      _value2 = value;
    });
  }

  Widget makeRadioListTiles() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(
        RadioListTile(
          value: i,
          groupValue: _value2,
          onChanged: _value2RadioChanged,
          title: Text("Item $i"),
          activeColor: Colors.purple,
          controlAffinity: ListTileControlAffinity.trailing,
          secondary: Icon(Icons.radio),
          subtitle: Text("Subtitle $i"),
        ),
      );
    }
    Column column = Column(
      children: list,
    );
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return makeRadioListTiles();
  }
}
