import 'package:flutter/material.dart';

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
  bool? _val1 = false;
  bool? _val2 = false;

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

  void _value1Changed(bool? value) {
    setState(() {
      _val1 = value;
    });
  }

  void _value2Changed(bool? value) {
    setState(() {
      _val2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _value,
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
              Checkbox(value: _val1, onChanged: _value1Changed),
              CheckboxListTile(
                value: _val2,
                onChanged: _value2Changed,
                activeColor: Colors.blue,
                title: Text("CheckBoxListTile"),
                subtitle: Text("SubTitle - checkbox"),
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Icon(Icons.archive),
              )
            ],
          ),
        ),
      ),
    );
  }
}
