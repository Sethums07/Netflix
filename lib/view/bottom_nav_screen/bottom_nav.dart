import 'package:flutter/material.dart';
import 'package:flutter_application_13/download_page/download_page.dart';
import 'package:flutter_application_13/home_page/home_page.dart';
import 'package:flutter_application_13/more_page/more_page.dart';

import 'package:flutter_application_13/search_screen/search_screen.dart';
import 'package:flutter_application_13/soon_page/soon_page.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    List _homescrn = [
      HomePage(),
      searchscreen(),
      soonpage(),
      download(),
      morepage(),
    ];

    return Scaffold(
      body: _homescrn[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined),
              label: "Coming soon"),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: "Download"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
      ),
    );
  }
}
