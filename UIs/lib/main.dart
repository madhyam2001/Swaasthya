import 'package:flutter/material.dart';
import 'package:swaasthya/pages/loading.dart';
import 'package:swaasthya/pages/predModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
          selectionColor: Colors.yellow,
          selectionHandleColor: Colors.black,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
      },
    );
  }
}
