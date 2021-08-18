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
  int? _value1 = 0;
  int? _value2 = 0;
  bool _v1 = false;
  bool _v2 = false;

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
                Checkbox(value: _val1, onChanged: _value1Changed),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
