// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/model/visitnotifier.dart';
import 'package:stateprovider/pages/home_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {

    final visitNotifier = Provider.of<VisitNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(visitNotifier.settingsVisitStatement, style: TextStyle(fontSize: 20,),),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  visitNotifier.onHomeVisit();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Go to Home')),
          ],
        ),
      ),
    );
  }
}