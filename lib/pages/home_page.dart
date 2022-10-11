// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/model/visitnotifier.dart';
import 'package:stateprovider/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final visitNotifier = Provider.of<VisitNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(visitNotifier.homeVisitStatement, style: TextStyle(fontSize: 20,),),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  visitNotifier.onSettingsVisit();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPage()),
                  );
                },
                child: Text('Go to Settings')),
          ],
        ),
      ),
    );
  }
}
