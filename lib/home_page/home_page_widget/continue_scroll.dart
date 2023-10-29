import 'package:flutter/material.dart';

class continuescroll extends StatefulWidget {
  const continuescroll({super.key});

  @override
  State<continuescroll> createState() => _continuescrollState();
}

class _continuescrollState extends State<continuescroll> {
  List continueImage = [
    Image.asset("assets/con1.png", fit: BoxFit.fill),
    Image.asset("assets/con2.png", fit: BoxFit.fill),
    Image.asset("assets/con3.png", fit: BoxFit.fill),
    Image.asset("assets/con1.png", fit: BoxFit.fill),
    Image.asset("assets/con2.png", fit: BoxFit.fill),
    Image.asset("assets/con3.png", fit: BoxFit.fill),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("Continue Watching for Emenalo",
                    style: TextStyle(
                        fontSize: 20.92117691040039, color: Colors.white)),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 163,
              child: ListView.builder(
                itemCount: continueImage.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    child: continueImage[index],
                    height: 161,
                    width: 103,
                    color: Colors.transparent,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
