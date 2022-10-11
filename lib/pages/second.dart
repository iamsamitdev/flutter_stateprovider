// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/model/appmodel.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('This is render from build Widget page 2');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page Now ${DateTime.now().millisecondsSinceEpoch}'),
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
                    appModel.text2 = 'Hohoho! ${DateTime.now().millisecondsSinceEpoch}';
                  },
                  child: Text('Change Value Text 2'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}