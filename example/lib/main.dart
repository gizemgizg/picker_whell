import 'package:flutter/material.dart';
import 'package:picker_whell/picker_whell.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 50,
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: const Text('Picker Whell'),
        ),
        body: Center(
          child: PickerWhell(
            itemCount: 100,
            itemWidth: 50,
          )
        ),
      ),
    );
  }
}
