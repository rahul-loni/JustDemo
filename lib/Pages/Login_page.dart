import 'package:flutter/material.dart';
import 'package:flutter_app_awesome/Pages/home_page.dart';
import 'package:flutter_app_awesome/bgImage.dart';

import '../drawer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page "),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                    child: Card(
                  child: Column(
                    children: <Widget>[
                      Form(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "WelCome To App",
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  labelText: "Usernsame"),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password"),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        height: 22,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage()));'
                          Navigator.pushNamed(context, "/home");
                        },
                        child: Text('Sign In'),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                    ],
                  ),
                )),
              ),
            ),
          ],
        ));
  }
}
