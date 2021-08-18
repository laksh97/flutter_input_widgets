import 'package:flutter/material.dart';

class Sliders extends StatefulWidget {
  const Sliders({Key? key}) : super(key: key);

  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double _vs1 = 0.0;
  void _setValue(double value) {
    setState(() {
      _vs1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Value is ${(_vs1 * 100).round()}"),
          Slider(
            value: _vs1,
            onChanged: _setValue,
          ),
        ],
      ),
    );
  }
}
