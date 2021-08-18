import 'package:flutter/material.dart';
import 'checkbox.dart';
import 'dart:async';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyApp(title: 'Flutter Demo Home Page'),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = "";
  bool? _val2 = false;
  int? _value1 = 0;
  int? _value2 = 0;
  bool _v1 = false;
  bool _v2 = false;
  double _vs1 = 0.0;
  String _dateValue = "";

  void _onChange(String value) {
    setState(() {
      _value = "Onchanged value is $value";
    });
  }

  void _onSubmit(String value) {
    setState(() {
      _value = "OnSubmit value is $value";
    });
  }

  void _value2Changed(bool? value) {
    setState(() {
      _val2 = value;
    });
  }

  void _value1RadioChanged(int? value) {
    setState(() {
      _value1 = value;
    });
  }

  void _value2RadioChanged(int? value) {
    setState(() {
      _value2 = value;
    });
  }

  void _value1SwitchChanged(bool value) {
    setState(() {
      _v1 = value;
    });
  }

  void _value2SwitchChanged(bool value) {
    setState(() {
      _v2 = value;
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

  void _setValue(double value) {
    setState(() {
      _vs1 = value;
    });
  }

  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2022),
    );
    if (picked != null) {
      setState(() {
        _dateValue = picked.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _value,
                ),
                Text(
                  "Text Field",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter email",
                    icon: Icon(Icons.email),
                  ),
                  onChanged: _onChange,
                  onSubmitted: _onSubmit,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                ),
                Text(
                  "CheckBox",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                CheckBox(),
                Text(
                  "CheckboxListTile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                CheckboxListTile(
                  value: _val2,
                  onChanged: _value2Changed,
                  activeColor: Colors.purple,
                  title: Text("CheckBoxListTile"),
                  subtitle: Text("SubTitle - checkbox"),
                  controlAffinity: ListTileControlAffinity.leading,
                  secondary: Icon(Icons.archive),
                ),
                Text(
                  "Radio Buttons",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                makeRadios(),
                Text(
                  "Radio Buttons List Tile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                makeRadioListTiles(),
                Text(
                  "Switch",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                Switch(value: _v1, onChanged: _value1SwitchChanged),
                Text(
                  "Switch List Tile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SwitchListTile(
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
                ),
                Text("Value is ${(_vs1 * 100).round()}"),
                Slider(
                  value: _vs1,
                  onChanged: _setValue,
                ),
                Text(
                  "Date Time Picker",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 20, width: 20),
                Text(_dateValue),
                ElevatedButton(
                  onPressed: _selectDate,
                  child: Text("Date Time Picker"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
