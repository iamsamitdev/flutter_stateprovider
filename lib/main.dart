// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/model/appmodel.dart';
import 'package:stateprovider/model/notimodel.dart';
import 'package:stateprovider/model/visitnotifier.dart';
// import 'package:stateprovider/pages/first.dart';
import 'package:stateprovider/pages/home_page.dart';
// import 'package:stateprovider/pages/firstwithsetstate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Without Provider

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Flutter State Provider',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: FirstStateWidgit(),
  //   );
  // }

  // With Provider

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppModel>(create: (_) => AppModel(),),
        ChangeNotifierProvider<NotiModel>(create: (_) => NotiModel(),),
        ChangeNotifierProvider<VisitNotifier>(
          create: (context) {
            return VisitNotifier();
          },
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter State Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }

}