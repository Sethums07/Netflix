import 'package:flutter/material.dart';

class mylistscroll extends StatefulWidget {
  const mylistscroll({super.key});

  @override
  State<mylistscroll> createState() => _mylistscrollState();
}

class _mylistscrollState extends State<mylistscroll> {
  List mylistImage = [
    Image.asset("assets/mylist1.png", fit: BoxFit.fill),
    Image.asset("assets/mylist2.png", fit: BoxFit.fill),
    Image.asset("assets/mylist3.png", fit: BoxFit.fill),
    Image.asset("assets/mylist1.png", fit: BoxFit.fill),
    Image.asset("assets/mylist2.png", fit: BoxFit.fill),
    Image.asset("assets/mylist3.png", fit: BoxFit.fill),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("My List",
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
              itemCount: mylistImage.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  child: mylistImage[index],
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
