import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:picker_whell/picker_whell.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  double itemWidth = 50.0;
  int itemCount = 100;
  int selected = 1;

  final FixedExtentScrollController _scrollController = FixedExtentScrollController(initialItem: 0);

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
          child: Container(
            height: 40,
            width: 350,
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
            // margin: const EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal.shade200),
              // ignore: lines_longer_than_80_chars
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView(
                physics: FixedExtentScrollPhysics(),
                magnification: 2.0,
                //squeeze :1.0,
                overAndUnderCenterOpacity: 0.5,
                onSelectedItemChanged: (x) {
                  setState(() {
                    selected = x;
                  });
                  // ignore: avoid_print
                  print(selected);
                },
                controller: _scrollController,
                itemExtent: itemWidth,
                children: List.generate(
                    itemCount,
                        (x) => RotatedBox(
                        quarterTurns: 1,
                        child: AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            width: x == selected ? 60 : 50,
                            height: x == selected ? 60 : 50,
                            alignment: Alignment.center,
                            // ignore: lines_longer_than_80_chars
                            child: Text(
                              '$x',
                              style: const TextStyle(color: Colors.teal),
                            )))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
