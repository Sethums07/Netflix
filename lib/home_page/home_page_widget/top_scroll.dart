import 'package:flutter/material.dart';

class topscroll extends StatefulWidget {
  const topscroll({super.key});

  @override
  State<topscroll> createState() => _topscrollState();
}

class _topscrollState extends State<topscroll> {
  List topImage = [
    Image.asset("assets/top1.png", fit: BoxFit.fill),
    Image.asset("assets/top2.png", fit: BoxFit.fill),
    Image.asset("assets/top3.png", fit: BoxFit.fill),
    Image.asset("assets/top1.png", fit: BoxFit.fill),
    Image.asset("assets/top2.png", fit: BoxFit.fill),
    Image.asset("assets/top3.png", fit: BoxFit.fill),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("Top 10 in Nigeria Today",
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
              itemCount: topImage.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  child: topImage[index],
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
