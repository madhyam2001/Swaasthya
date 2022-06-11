import 'package:flutter/material.dart';
import 'package:swaasthya/pages/SharedNan.dart';
import 'package:swaasthya/pages/dashboard.dart';
import 'package:swaasthya/pages/result.dart';
import 'package:swaasthya/pages/shared.dart';
import 'package:swaasthya/pages/sign_in.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final attributes = [
    'AGE  ',
    'BP   ',
    'SG   ',
    'AL   ',
    'SU   ',
    'RBC  ',
    'PC   ',
    'PCC  ',
    'BA   ',
    'BGR  ',
    'BU   ',
    'SC   ',
    'SOD  ',
    'POT  ',
    'HEMO ',
    'PCV  ',
    'WC   ',
    'RC   ',
    'HTN  ',
    'DM   ',
    'CAD  ',
    'APPET',
    'PE   ',
    'ANE  '
  ];

  final values = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text('Analysis'),
        centerTitle: true,
        leading: TextButton.icon(
          onPressed: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Dashboard())),
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
        padding: const EdgeInsets.all(20.0),
        child: Scrollbar(
          //showTrackOnHover: true,
          interactive: true,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Please enter the following data !',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    // decoration: TextDecoration.overline,
                  ),
                ),
                const SizedBox(height: 20.0),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: attributes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            attributes[index],
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              // decoration: TextDecoration.overline,
                            ),
                          ),
                          const SizedBox(width: 15.0),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: values[index],
                                enabledBorder: const OutlineInputBorder(),
                                focusedBorder: const OutlineInputBorder(),
                              ),
                              // keyboardType: const TextInputType.numberWithOptions(
                              //     decimal: true),
                              // inputFormatters: <TextInputFormatter>[
                              //   FilteringTextInputFormatter.digitsOnly
                              // ], // Only numbers can be entered
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          int randomNumber = Random().nextInt(4) + 1;
          if (randomNumber <= 2) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Shared()));
          } else {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const SharedNan()));
          }
        },
        label: const Text(
          'Results',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        icon: const Icon(Icons.arrow_forward),
        backgroundColor: Colors.black,
      ),
    );
  }
}
