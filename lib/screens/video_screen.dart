import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class videoscreen extends StatefulWidget {
  const videoscreen({super.key});

  @override
  State<videoscreen> createState() => _videoscreenState();
}

YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'QF-oyCwaArU',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ));

class _videoscreenState extends State<videoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
            height: 350,
            color: Colors.black,
            child: YoutubePlayer(controller: _controller1)),
      ),
    );
  }
}
