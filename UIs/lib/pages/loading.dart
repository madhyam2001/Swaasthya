import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:swaasthya/pages/register.dart';
// import 'package:swasthya/pages/symptoms.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Register())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Center(
          child: Column(
            children: const <Widget>[
              Icon(
                Icons.health_and_safety,
                color: Colors.red,
                size: 100.0,
              ),
              SizedBox(height: 20.0),
              Text(
                'Swaasthya',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 75.0),
              SpinKitFadingCube(
                color: Colors.black,
                size: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
