import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtubedemo extends StatefulWidget {
  const Youtubedemo({super.key});

  @override
  State<Youtubedemo> createState() => _YoutubedemoState();
}

class _YoutubedemoState extends State<Youtubedemo> {
 YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'Tb9k9_Bo-G4',// https://www.youtube.com/watch?v=Tb9k9_Bo-G4
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
        isLive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Youtube Player"),
          ) ,
          body: player,
        );
      },
    );
  }

}
