import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value = 0;

  void _increment() {
    setState(() {
      _value++;
    });
  }

  void _decrement() {
    setState(() {
      if(_value>0){
        _value--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi App"),
        backgroundColor: Colors.amber
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clicks:"),
            Text('$_value', style: TextStyle(fontSize: 30, color: Colors.blueAccent))
          ],
        ),
      ),
      floatingActionButton:
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              child: Icon(Icons.remove),
              onPressed: _decrement
            ),
            FloatingActionButton(
              backgroundColor: Colors.amber,
              child: Icon(Icons.add),
              onPressed: _increment
            ),
          ],
        )
        
    );
  }
}