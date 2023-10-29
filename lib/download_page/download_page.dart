import 'package:flutter/material.dart';

class download extends StatefulWidget {
  const download({super.key});

  @override
  State<download> createState() => _downloadState();
}

class _downloadState extends State<download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("     Smart Downloads",
                style: TextStyle(
                    fontSize: 14.722221374511719,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            SizedBox(height: 40),
            Text("Introducing Downloads For You",
                style: TextStyle(
                    fontSize: 19.63433074951172,
                    fontWeight: FontWeight.w700,
                    color: Colors.white)),
            SizedBox(height: 18),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus.bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa.id ut ipsum aliquam enim non posuere pulvinar diam",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundColor: const Color.fromARGB(255, 75, 73, 73),
            ),
            SizedBox(height: 20),
            Container(
                child: Center(
                  child: Text("SETUP",
                      style: TextStyle(
                          fontSize: 13.858515739440918,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
                width: 353,
                height: 40.89066696166992,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0xff0071eb))),
            SizedBox(height: 40),
            Column(
              children: [
                Container(
                    child: Center(
                      child: Text("Find Something to Download",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.708431243896484,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    width: 250,
                    height: 33,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xff424242))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
