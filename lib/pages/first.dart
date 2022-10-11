// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, avoid_print, unused_local_variable, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/model/appmodel.dart';
import 'package:stateprovider/pages/second.dart';

class FirstPage extends StatelessWidget {

  const FirstPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final username = 'Samit';
    print('This is render from build Widget page 1');
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page Now ${DateTime.now().millisecondsSinceEpoch}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Consumer<AppModel>(
            builder: (context, appModel, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(appModel.text1),
                Text(appModel.text2),
                ElevatedButton(
                  onPressed: () {
                    appModel.text1 = 'Hahaha! ${DateTime.now().millisecondsSinceEpoch}';
                  },
                  child: Text('Change Value Text 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  }, 
                  child: Text('Go to Second Page')
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
