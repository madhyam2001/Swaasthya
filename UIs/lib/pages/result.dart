import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swaasthya/pages/questions.dart';
import 'package:swaasthya/pages/register.dart';
import 'package:swaasthya/pages/sign_in.dart';

class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text('Results'),
        centerTitle: true,
        leading: TextButton.icon(
          onPressed: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Questions())),
          icon: const Icon(Icons.arrow_back),
          label: const Text(''),
        ),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const SignIn())),
            icon: const Icon(Icons.logout),
            label: const Text(''),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kidney.jpg'),
                radius: 100.0,
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 30.0),
            Divider(
              height: 15.0,
              color: Colors.black,
              thickness: 8.0,
            ),
            SizedBox(height: 30.0),
            Text("It seems that you have Chronic Kidney Disease.",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
            Text(
                "It is a condition in which the kidneys are damaged and cannot filter blood as well as they should.",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
            Text("You must consult the doctor immediately.",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
            Text(
                "Use our app to get in touch with top doctors and get the required medication directly deliverd at your doorstep.",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
