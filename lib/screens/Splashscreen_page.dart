import 'package:flutter/material.dart';
import 'package:flutter_application_13/username/username_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Username(),
        )));
  }

  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Container(
                height: 100,
                width: 150,
                child: Image.asset('assets/logos_netflix.png')))));
  }
}
