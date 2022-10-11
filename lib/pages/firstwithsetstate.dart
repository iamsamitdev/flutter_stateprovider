// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class FirstStateWidgit extends StatefulWidget {
  const FirstStateWidgit({super.key});

  @override
  State<FirstStateWidgit> createState() => _FirstStateWidgitState();
}

class _FirstStateWidgitState extends State<FirstStateWidgit> {

  String _text1 = 'What ?';

  _setText1() {
    setState(() {
      _text1 = 'Hahaha ${DateTime.now().millisecondsSinceEpoch}';
      print('This is render from method _setText1');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('This is render from build Widget');
    return Scaffold(
      appBar: AppBar(
        title: Text('Now ${DateTime.now().millisecondsSinceEpoch}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(_text1),
              ElevatedButton(
                onPressed: () {
                  _setText1();
                },
                child: Text('Change Value'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}