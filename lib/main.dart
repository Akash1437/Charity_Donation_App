import 'package:charity_donation_app/upi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var bgcolor = Colors.amber;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 239, 239, 239)),
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Charity Donation App'),
          // centerTitle: true,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  // color: Colors.grey,
                  child: Image.asset('donation2.jpeg'),
                  decoration: BoxDecoration(
                      // color: Colors.amberAccent,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                  '“We make a living by what we get, but we make a life by what we give"'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Click')),
          ],
        ),
      ),
    );
  }
}
