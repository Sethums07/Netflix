import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class soonpage extends StatefulWidget {
  const soonpage({super.key});

  @override
  State<soonpage> createState() => _soonpageState();
}

YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'QF-oyCwaArU',
  flags: YoutubePlayerFlags(
    autoPlay: true,
    mute: true,
  ),
);

class _soonpageState extends State<soonpage> {
  List<String> notImage = [
    "assets/not3.png",
    "assets/not4.png",
    "assets/not5.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 15,
                    )),
                SizedBox(width: 10),
                Text(
                  "Notifications",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.906246185302734,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Container(
              width: 375,
              height: 65,
              decoration: BoxDecoration(color: Color(0xff424242)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/not1.png",
                    width: 113,
                    height: 55,
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text(
                        "New Arrival",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.719536781311035,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4),
                      Text("El Chapo",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.719536781311035,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 4),
                      Text("Nov 6",
                          style: TextStyle(
                            fontSize: 10.509531021118164,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  )
                ],
              )),
          Container(
              width: 375,
              height: 65,
              decoration: BoxDecoration(color: Color(0xff424242)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/not2.png",
                    width: 113,
                    height: 55,
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text(
                        "New Arrival",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.719536781311035,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4),
                      Text("Peaky Blinders",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.719536781311035,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 4),
                      Text("Nov 6",
                          style: TextStyle(
                            fontSize: 10.509531021118164,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  )
                ],
              )),
          SingleChildScrollView(
            child: Container(
                width: double.infinity,
                height: 430,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                              height: 420,
                              width: double.infinity,
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: YoutubePlayer(
                                          controller: _controller)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.notifications,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        SizedBox(width: 50),
                                        Icon(
                                          Icons.share,
                                          color: Colors.white,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Remind me",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11),
                                        ),
                                        SizedBox(width: 35),
                                        Text("share",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          "Season 1 Coming December 14",
                                          style: TextStyle(
                                              fontSize: 11.397770881652832,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                        SizedBox(height: 10),
                                        Text("Castle & Castle",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.662282943725586,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 10),
                                        Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus.bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa.id ut ipsum aliquam enim non posuere pulvinar diam.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.140909194946289,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Steamy",
                                          style: TextStyle(
                                            fontSize: 11.397770881652832,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 6),
                                        child: Text(".",
                                            style: TextStyle(
                                                fontSize: 18.78152847290039,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white)),
                                      ),
                                      Text("Soapy",
                                          style: TextStyle(
                                              fontSize: 11.397770881652832,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 6),
                                        child: Text(".",
                                            style: TextStyle(
                                                fontSize: 18.78152847290039,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white)),
                                      ),
                                      Text("Slow Burn",
                                          style: TextStyle(
                                              fontSize: 11.397770881652832,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 6),
                                        child: Text(".",
                                            style: TextStyle(
                                                fontSize: 18.78152847290039,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white)),
                                      ),
                                      Text("Suspenful",
                                          style: TextStyle(
                                              fontSize: 11.397770881652832,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 6),
                                        child: Text(".",
                                            style: TextStyle(
                                                fontSize: 18.78152847290039,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white)),
                                      ),
                                      Text("Teen",
                                          style: TextStyle(
                                              fontSize: 11.397770881652832,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 6),
                                        child: Text(".",
                                            style: TextStyle(
                                                fontSize: 18.78152847290039,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white)),
                                      ),
                                      Text("Mystery",
                                          style: TextStyle(
                                              fontSize: 11.397770881652832,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))),
          ),
        ],
      ),
    );
  }
}
