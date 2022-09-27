import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      home: ChangeNotifierProvider(
        create: (context) => Count(),
        child: const MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build");

    final countData = Provider.of<Count>(context, listen: false);

    return Scaffold(
      body: Center(
        child: Consumer<Count>(
          builder: (context, value, child) => Text(
            value.number.toString(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countData.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


class Count extends ChangeNotifier {
  int number = 0;

  void add() {
    number += 1;
    notifyListeners();
  }
}
