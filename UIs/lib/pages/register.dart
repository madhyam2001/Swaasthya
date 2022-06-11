import 'package:flutter/material.dart';
import 'package:swaasthya/pages/dashboard.dart';
import 'package:swaasthya/pages/shared2.dart';
import 'package:swaasthya/pages/sign_in.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email = "";
  String? _password = "";

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text('Register'),
        centerTitle: true,
        actions: <Widget>[
          TextButton.icon(
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const SignIn())),
            icon: const Icon(Icons.person),
            label: const Text('Login'),
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
                validator: (val) =>
                    val!.length < 6 ? 'Password too short.' : null,
                onSaved: (val) => _password = val,
                obscureText: true,
              ),
              // TextFormField(
              //   decoration: const InputDecoration(hintText: 'Password'),
              //   validator: (val) =>
              //       val!.length < 6 ? 'Enter a password 6+ chars long ' : null,
              //   obscureText: true,
              //   onChanged: (val) {
              //     setState(() => _password = val);
              //   },
              // ),
              const SizedBox(height: 25.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Shared2())),
                child: const Text(
                  'Register',
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
                'Or Register With',
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
