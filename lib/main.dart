import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My Application",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My App")),
        body: Center(
          child: Container(
            // padding: const EdgeInsets.all(10),
            // alignment: Alignment.center,

            height: 160,
            width: 160,
            decoration: BoxDecoration(
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      //spreadRadius: 10,
                      offset: Offset(2.0, 5.0))
                ],
                color: Colors.green,
                gradient: LinearGradient(colors: [Colors.red, Colors.yellow])),

            child: Center(
                child: Text(
              "I am Box",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )),
          ),
        ));
  }
}
