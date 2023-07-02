import 'package:myquizapp/listQuiz/models/data.dart';
import 'package:myquizapp/listQuiz/all_quiz.dart';
import 'package:myquizapp/theme/box_icons_icons.dart';
import 'package:myquizapp/theme/config.dart';
import 'package:myquizapp/ui/widgets/card.dart';
import 'package:myquizapp/ui/widgets/textWidget.dart';
import 'package:myquizapp/ytplayer/ytPlayer.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  Model? model;

  VideoPage({super.key, this.model});
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: widget.model!.videolink.toString(),
      // 'Tb9k9_Bo-G4', // https://www.youtube.com/watch?v=Tb9k9_Bo-G4
      flags: const YoutubePlayerFlags(
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
          bufferIndicator: ProgressBar(),
          thumbnail: Image.network(
            'https://buffer.com/resources/content/images/resources/wp-content/uploads/2017/02/video-stats@2x.png',
            // height: 300,
            // width: double.infinity,
            fit: BoxFit.cover,
          ),
          showVideoProgressIndicator: true,
          // progressIndicatorColor: Colors.black45,
          progressColors: const ProgressBarColors(
              //  playedColor: Colors.amber,
              //  handleColor: Colors.amberAccent,
              ),
        ),
        builder: (context, player) {
          return Scaffold(
            body: CupertinoPageScaffold(
              // backgroundColor: Colors().secondColor(1),
              navigationBar: CupertinoNavigationBar(
                automaticallyImplyLeading: true,
                previousPageTitle: "Back",
                trailing: CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: const Icon(BoxIcons.bx_share_alt),
                  onPressed: () {},
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                        child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                            child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 35,
                            ),
                            Container(
                              width: double.infinity,
                              // width: MediaQuery.of(context).size.width,
                              height: 250,
                              //  height: MediaQuery.of(context).size.height * 0.3,
                              child: player,
                              // child: Image(
                              //   image: ResizeImage(
                              //     const AssetImage('assets/images/video.jpg'),
                              //     height:
                              //         MediaQuery.of(context).size.width ~/ 2,
                              //     width: (MediaQuery.of(context).size.height *
                              //             0.5) ~/
                              //         2,
                              //   ),
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        24, 10, 8, 8.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          width: 4,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(500),
                                              color: const Color(0xFF343434)),
                                          child: const Text(""),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: TextWidget(
                                              text:
                                                  widget.model!.name.toString(),
                                              color: const Color(0xFF343434),
                                              textSize: 24),
                                          // child: Text(
                                          //   overflow: TextOverflow.ellipsis,
                                          //   "Which component is used to compile ?",
                                          //   style: TextStyle(
                                          //       color: Color(0xFF343434),
                                          //       fontFamily: 'Red Hat Display',
                                          //       fontSize: 24),
                                          // ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: <Widget>[
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Icon(
                                              BoxIcons.bx_bar_chart_alt_2,
                                              size: 20,
                                              color: Color(0xFFADADAD)),
                                        ),
                                        Text(
                                          widget.model!.beginner.toString(),
                                          style: const TextStyle(
                                              color: Color(0xFFADADAD),
                                              fontFamily: 'Red Hat Display',
                                              fontSize: 14),
                                        ),
                                        const Spacer(),
                                        Text(
                                          widget.model!.time.toString(),
                                          style: const TextStyle(
                                              color: Color(0xFFADADAD),
                                              fontFamily: 'Red Hat Display',
                                              fontSize: 14),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Icon(BoxIcons.bx_timer,
                                              size: 20,
                                              color: Color(0xFFADADAD)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(8),
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: Text(
                                        widget.model!.description.toString(),
                                        style: const TextStyle(
                                            color: Color(0xFF343434),
                                            fontFamily: 'Red Hat Display',
                                            fontSize: 16),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        )),
                        // Positioned(
                        //     right: 30,
                        //     top: MediaQuery.of(context).size.height * 0.465,
                        //     child: Container(
                        //       decoration: BoxDecoration(
                        //           gradient: const LinearGradient(
                        //             colors: [
                        //               Color(0xFFABDCFF),
                        //               Color(0xFF0396FF),
                        //             ],
                        //             begin: Alignment.topLeft,
                        //             end: Alignment.bottomRight,
                        //           ),
                        //           boxShadow: [
                        //             BoxShadow(
                        //                 blurRadius: 25,
                        //                 color: const Color(0xFF03A9F4)
                        //                     .withOpacity(0.4),
                        //                 offset: const Offset(0, 4))
                        //           ],
                        //           borderRadius: BorderRadius.circular(500)),
                        //       child: FloatingActionButton(
                        //           heroTag: "video",
                        //           elevation: 0,
                        //           highlightElevation: 0,
                        //           backgroundColor:
                        //               const Color.fromARGB(3, 33, 33, 33),
                        //           child: Icon(
                        //               _controller!.value.isPlaying
                        //                   ? BoxIcons.bx_pause
                        //                   : BoxIcons.bx_play,
                        //               size: 40),
                        //           // child: const Icon(BoxIcons.bx_play, size: 40),
                        //           //play video
                        //           onPressed: () {
                        //             if (_controller!.value.isPlaying) {
                        //               _controller!.pause();
                        //             } else {
                        //               _controller!.play();
                        //             }
                        //             // Navigator.push(
                        //             //     context,
                        //             //     MaterialPageRoute(
                        //             //       builder: (context) => Youtubedemo(),
                        //             //     ));
                        //           }),
                        //     )),
                      ],
                    )),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: CardWidget(
                      button: true,
                      gradient: true,
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AllQuizList(),
                                    ));
                              },
                              child: const Text(
                                "Attempt Test",
                                style: TextStyle(
                                    fontFamily: 'Red Hat Display',
                                    fontSize: 18),
                              )),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              BoxIcons.bx_pencil,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
