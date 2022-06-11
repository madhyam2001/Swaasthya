import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class PredModel extends StatefulWidget {
  const PredModel({Key? key}) : super(key: key);

  @override
  State<PredModel> createState() => _PredModelState();
}

class _PredModelState extends State<PredModel> {
  var predValue = "";

  Future<void> predData() async {
    final interpreter = await Interpreter.fromAsset('predModel.tflite');
    var input = [
      [
        '45',
        '80',
        '1.02',
        '1',
        '3',
        'Normal/Abnormal',
        'Normal/Abnormal',
        'Present/Not Present',
        'Present/Not Present',
        '121',
        '36',
        '1.2',
        '111',
        '2.5',
        '15.4',
        '44',
        '7800',
        '5.2',
        'Yes/No',
        'Yes/No',
        'Yes/No',
        'Good/Poor',
        'Yes/No',
        'Yes/No'
      ]
    ];
    var output = List.filled(1, 0).reshape([1, 1]);
    interpreter.run(input, output);
    print(output[0][0]);
  }

  @override
  Widget build(BuildContext context) {
    predData();
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 100,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
