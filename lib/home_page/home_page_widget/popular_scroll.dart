import 'package:flutter/material.dart';

class popularscroll extends StatefulWidget {
  const popularscroll({super.key});

  @override
  State<popularscroll> createState() => _popularscrollState();
}

class _popularscrollState extends State<popularscroll> {
  List popImage = [
    Image.asset("assets/pop1.png", fit: BoxFit.fill),
    Image.asset("assets/pop2.png", fit: BoxFit.fill),
    Image.asset("assets/pop3.png", fit: BoxFit.fill),
    Image.asset("assets/pop1.png", fit: BoxFit.fill),
    Image.asset("assets/pop2.png", fit: BoxFit.fill),
    Image.asset("assets/pop3.png", fit: BoxFit.fill),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("Popular on Netflix",
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
              itemCount: popImage.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  child: popImage[index],
                  height: 161,
                  width: 103,
                  color: Colors.transparent,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
