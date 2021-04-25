import 'package:flutter/material.dart';

/// Main entry of the application.
void main() {
  runApp(MyApp());
}

/// The main MyApp class which contains the initial application details.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      );
}
