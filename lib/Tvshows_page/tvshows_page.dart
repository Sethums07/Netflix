import 'package:flutter/material.dart';

import 'package:flutter_application_13/home_page/home_page_widget/continue_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/mylist_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/popular_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/preview_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/top_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/trend_scroll.dart';
import 'package:flutter_application_13/movies_page/movies_page.dart';
import 'package:flutter_application_13/mylist_page/mylist_page.dart';
import 'package:flutter_application_13/view/bottom_nav_screen/bottom_nav.dart';

class tvshowsPage extends StatefulWidget {
  const tvshowsPage({super.key});

  @override
  State<tvshowsPage> createState() => _tvshowsPageState();
}

class _tvshowsPageState extends State<tvshowsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset("assets/tvshows1.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          child: Image.asset("assets/logos_netflix-icon.png"),
                        ),
                        DropdownButton(
                            dropdownColor: Colors.black,
                            hint: Text(
                              "Tv shows",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            items: [
                              DropdownMenuItem(
                                  value: "",
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => bottomnav(),
                                        )),
                                    child: Text(
                                      "All",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                              DropdownMenuItem(
                                  value: "",
                                  child: Text("Tv shows",
                                      style: TextStyle(color: Colors.white))),
                              DropdownMenuItem(
                                  value: "",
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => moviesPage(),
                                        )),
                                    child: Text("Movies",
                                        style: TextStyle(color: Colors.white)),
                                  )),
                              DropdownMenuItem(
                                  value: "",
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => mylistpage(),
                                        )),
                                    child: Text("My List",
                                        style: TextStyle(color: Colors.white)),
                                  )),
                            ],
                            onChanged: (Value) {}),
                        DropdownButton(items: [
                          DropdownMenuItem(
                            child: Text(
                              "All Genres",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          )
                        ], onChanged: (value) {})
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    left: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          child: Image.asset("assets/Group 16.png"),
                        ),
                        Text(
                          "#2 in Nigeria Today",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.asset("assets/Group 11.png")),
                      Container(
                        height: 45,
                        width: 110,
                        child: Image.asset("assets/Group 13.png"),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 226, 222, 222),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/Group 10.png"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  scrollwidget(),
                  SizedBox(
                    height: 15,
                  ),
                  continuescroll(),
                  SizedBox(
                    height: 15,
                  ),
                  popularscroll(),
                  SizedBox(
                    height: 15,
                  ),
                  trendscroll(),
                  SizedBox(
                    height: 15,
                  ),
                  topscroll(),
                  SizedBox(
                    height: 15,
                  ),
                  mylistscroll()
                ],
              )
            ],
          ),
        ));
  }
}
