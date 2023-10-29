import 'package:flutter/material.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({super.key});

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  List searchImage = [
    Image.asset("assets/search1.png"),
    Image.asset("assets/search2.png"),
    Image.asset("assets/search3.png"),
    Image.asset("assets/search4.png"),
    Image.asset("assets/search5.png"),
    Image.asset("assets/search6.png"),
    Image.asset("assets/search7.png"),
  ];

  List _Text = [
    "Citation",
    "Oloture",
    "The Setup",
    "Breaking Bad",
    "Ozark",
    "The Governor",
    "Your Excellency"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,
                    color: Color.fromARGB(255, 228, 225, 225)),
                suffixIcon:
                    Icon(Icons.mic, color: Color.fromARGB(255, 228, 225, 225)),
                filled: true,
                fillColor: Color.fromARGB(255, 78, 77, 77),
                border: OutlineInputBorder(),
                hintText: "Search for a show, movie, genre, e.t.c.",
                hintStyle: TextStyle(color: Color.fromARGB(255, 228, 225, 225)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                "Top Searches",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 500,
                color: Colors.black,
                child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      color: Color.fromARGB(255, 78, 77, 77),
                      height: 76,
                      width: double.infinity,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 76,
                              width: 146,
                              color: Colors.blue,
                              child: searchImage[index],
                            ),
                            Text(
                              _Text[index],
                              style: TextStyle(
                                  fontSize: 14.722221374511719,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.play_circle,
                              color: Colors.white,
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
