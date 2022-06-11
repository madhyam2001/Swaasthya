import 'package:flutter/material.dart';
import 'package:swaasthya/pages/questions.dart';
import 'package:swaasthya/pages/result.dart';
import 'package:swaasthya/pages/sign_in.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text('Dashboard'),
        centerTitle: true,
        leading: TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.menu),
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
        padding: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const ProfilePicture(
              name: 'User',
              role: 'User',
              radius: 48,
              fontsize: 36,
              tooltip: true,
              random: true,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Hello!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'User',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 200.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Questions())),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
                    child: Text(
                      'Take Test',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 60.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Results())),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
                    child: Text(
                      'History',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
              ],
            ),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
                    child: Text(
                      'Doctors',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
                    child: Text(
                      'Medicines',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
                    child: Text(
                      'Emergency',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
