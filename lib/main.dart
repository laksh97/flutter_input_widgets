import 'package:flutter/material.dart';
import 'package:flutter_input_widgets/radioButtonsTiles.dart';
import 'package:flutter_input_widgets/radiobuttons.dart';
import 'package:flutter_input_widgets/slider.dart';
import 'package:flutter_input_widgets/switch.dart';
import 'package:flutter_input_widgets/switchlisttile.dart';
import 'package:flutter_input_widgets/textfield.dart';
import 'checkbox.dart';
import 'dart:async';

import 'checkboxlisttile.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyApp(title: 'Flutter Input Widgets'),
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
  String _dateValue = "";

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
                  "Text Field",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                TextFields(),
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
                CheckBoxListTiles(),
                Text(
                  "Radio Buttons",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                RadioButtons(),
                Text(
                  "Radio Buttons List Tile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                RadioButtonsListTile(),
                Text(
                  "Switch",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                Switchs(),
                Text(
                  "Switch List Tile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SwitchListTiles(),
                Sliders(),
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
