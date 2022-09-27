import 'package:flutter/material.dart';
import 'package:state_without_state_management/screens/detail_page.dart';
import 'package:state_without_state_management/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        DetailPage.routeName : (context) => DetailPage()
      },
    );
  }
}

