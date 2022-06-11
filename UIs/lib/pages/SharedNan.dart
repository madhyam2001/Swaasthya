import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:swaasthya/pages/result.dart';
import 'package:swaasthya/pages/result2.dart';

class SharedNan extends StatefulWidget {
  const SharedNan({Key? key}) : super(key: key);

  @override
  State<SharedNan> createState() => _SharedState();
}

class _SharedState extends State<SharedNan> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 8),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Results2())));
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
