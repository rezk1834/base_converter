import 'package:flutter/material.dart';
import 'package:base_converter/components/block.dart';
import 'package:base_converter/components/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  String _input = '';
  int _inputBase = 10;
  List<String> _outputs = ['', '', '', ''];

  void _convert() {
    setState(() {
      try {
        int number = int.parse(_input, radix: _inputBase);
        _outputs[0] = number.toRadixString(2).toUpperCase();
        _outputs[1] = number.toRadixString(8).toUpperCase();
        _outputs[2] = number.toRadixString(10).toUpperCase();
        _outputs[3] = number.toRadixString(16).toUpperCase();
      } catch (e) {
        _outputs = ['', '', '', ''];
      }
    });
  }

  void _reset() {
    setState(() {
      _controller.clear();
      _input = '';
      _outputs = ['', '', '', ''];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text('Base Converter'),
      ),
      drawer: TheDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Input',
              ),
              onChanged: (value) {
                setState(() {
                  _input = value;
                  _convert();
                });
              },
            ),
            SizedBox(height: 10),
            DropdownButton<int>(
              borderRadius: BorderRadius.circular(25),
              iconEnabledColor: Colors.black,
              dropdownColor: Colors.grey[300],
              value: _inputBase,
              onChanged: (int? newValue) {
                setState(() {
                  _inputBase = newValue!;
                  _convert();
                });
              },
              items: <int>[2, 8, 10, 16].map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text('Base $value'),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                block('Binary', _outputs[0]),
                SizedBox(width: 20),
                block('Decimal', _outputs[2]),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                block('Octal', _outputs[1]),
                SizedBox(width: 20),
                block('Hexadecimal', _outputs[3]),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextButton(
                onPressed: _reset,
                child: Text(
                  'Reset',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
