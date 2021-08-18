import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  String _value = "";
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
