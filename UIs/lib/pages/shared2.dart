import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:swaasthya/pages/dashboard.dart';
import 'package:swaasthya/pages/result.dart';

class Shared2 extends StatefulWidget {
  const Shared2({Key? key}) : super(key: key);

  @override
  State<Shared2> createState() => _SharedState();
}

class _SharedState extends State<Shared2> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Dashboard())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: SpinKitChasingDots(
          color: Colors.black,
          size: 50.0,
        ),
      ),
    );
  }
}
