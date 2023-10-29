import 'package:flutter/material.dart';
import 'package:flutter_application_13/screens/Splashscreen_page.dart';

void main() {
  runApp(NetFlix());
}

class NetFlix extends StatefulWidget {
  const NetFlix({super.key});

  @override
  State<NetFlix> createState() => _NetFlixState();
}

class _NetFlixState extends State<NetFlix> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Splashscreen());
  }
}
