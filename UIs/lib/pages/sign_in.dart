import 'package:flutter/material.dart';
import 'package:swaasthya/pages/dashboard.dart';
import 'package:swaasthya/pages/register.dart';
import 'package:swaasthya/pages/shared2.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text('Login'),
        centerTitle: true,
        actions: <Widget>[
          TextButton.icon(
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Register())),
            icon: const Icon(Icons.person),
            label: const Text('Register'),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 0.0),
        child: Form(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                    // enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    // focusedErrorBorder: OutlineInputBorder(),
                    // errorBorder: OutlineInputBorder(),
                    // focusColor: Colors.black,
                    // fillColor: Colors.black,
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    hintText: 'YourEmail@gmail.com',
                    border: OutlineInputBorder()),
                validator: (val) => val!.isEmpty ? 'Enter an email ' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              const SizedBox(height: 25.0),
              TextFormField(
                decoration: const InputDecoration(
                    // enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    // focusedErrorBorder: OutlineInputBorder(),
                    // errorBorder: OutlineInputBorder(),
                    // focusColor: Colors.black,
                    // fillColor: Colors.black,
                    icon: Icon(
                      Icons.password_rounded,
                      color: Colors.black,
                    ),
                    hintText: 'YourPassword123',
                    border: OutlineInputBorder()),
                validator: (val) => val!.isEmpty ? 'Enter a password ' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
                obscureText: true,
              ),
              const SizedBox(height: 25.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Shared2())),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 25.0),
              const Divider(
                height: 15.0,
                color: Colors.black,
                thickness: 5,
              ),
              const SizedBox(height: 25.0),
              const Text(
                'Or Login With',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 25.0),
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/googleLogo.jpg'),
                  radius: 28.0,
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
