import 'package:flutter/material.dart';

class scrollwidget extends StatefulWidget {
  const scrollwidget({super.key});

  @override
  State<scrollwidget> createState() => _scrollwidgetState();
}

class _scrollwidgetState extends State<scrollwidget> {
  List PreviewImage = [
    Image.asset("assets/Ellipse 1.png"),
    Image.asset("assets/Ellipse 2.png"),
    Image.asset("assets/Ellipse 3.png"),
    Image.asset("assets/Ellipse 1.png"),
    Image.asset("assets/Ellipse 2.png"),
    Image.asset("assets/Ellipse 3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Previews",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: PreviewImage.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CircleAvatar(
                child: PreviewImage[index],
                backgroundColor: Colors.transparent,
                radius: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}
