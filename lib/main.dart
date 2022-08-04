import 'package:app_sample/screens/home/yao_home.dart';
import 'package:app_sample/utility/google_sheet.dart';
import 'package:flutter/material.dart';

void main() async {
  await GoogleSheet.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GoogleSheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const YaoHome(),
    );
  }
}
