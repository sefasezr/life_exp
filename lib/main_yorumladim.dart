/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black54,
          colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: Colors.blue,
              primary: Colors.orange,
              brightness: Brightness.dark),
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
          appBarTheme: AppBarTheme(color: Colors.orange)),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          Theme.of(context).cardColor.toString(),
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                foregroundColor: Theme.of(context).scaffoldBackgroundColor,
                backgroundColor: Colors.yellow)),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}


 */
