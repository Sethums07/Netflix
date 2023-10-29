import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_13/Tvshows_page/tvshows_page.dart';
import 'package:flutter_application_13/home_page/home_page_widget/continue_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/mylist_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/popular_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/preview_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/top_scroll.dart';
import 'package:flutter_application_13/home_page/home_page_widget/trend_scroll.dart';
import 'package:flutter_application_13/movies_page/movies_page.dart';
import 'package:flutter_application_13/mylist_page/mylist_page.dart';
import 'package:flutter_application_13/screens/video_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List homeImage = [
    Image.asset("assets/nun2.png"),
    Image.asset("assets/leo.png"),
    Image.asset("assets/got1.png"),
    Image.asset("assets/bhee.png"),
    Image.asset("assets/st.png"),
    Image.asset("assets/salaar.png")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CarouselSlider.builder(
                      itemCount: homeImage.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Container(child: homeImage[itemIndex]),
                      options: CarouselOptions(
                        height: 400,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.7,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          child: Image.asset("assets/logos_netflix-icon.png"),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => tvshowsPage(),
                              )),
                          child: Text(
                            "TV shows",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => moviesPage(),
                              )),
                          child: Text(
                            "Movies",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => mylistpage(),
                              )),
                          child: Text("MyList",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        )
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
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => videoscreen(),
                            )),
                        child: Container(
                          height: 45,
                          width: 110,
                          child: Image.asset("assets/Group 13.png"),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 226, 222, 222),
                          ),
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
