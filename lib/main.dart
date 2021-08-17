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
              )
            ],
          ),
        ),
      ),
    );
  }
}
