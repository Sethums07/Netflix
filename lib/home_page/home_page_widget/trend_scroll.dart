import 'package:flutter/material.dart';

class trendscroll extends StatefulWidget {
  const trendscroll({super.key});

  @override
  State<trendscroll> createState() => _trendscrollState();
}

class _trendscrollState extends State<trendscroll> {
  List trendImage = [
    Image.asset("assets/trnd1.png", fit: BoxFit.fill),
    Image.asset("assets/trnd2.png", fit: BoxFit.fill),
    Image.asset("assets/trnd3.png", fit: BoxFit.fill),
    Image.asset("assets/trnd1.png", fit: BoxFit.fill),
    Image.asset("assets/trnd2.png", fit: BoxFit.fill),
    Image.asset("assets/trnd3.png", fit: BoxFit.fill),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("Trending Now",
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
              itemCount: trendImage.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  child: trendImage[index],
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
