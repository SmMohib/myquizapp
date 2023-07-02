import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myquizapp/listQuiz/models/data.dart';
import 'package:myquizapp/theme/box_icons_icons.dart';
import 'package:myquizapp/ui/pages/video.dart';
import 'package:myquizapp/ui/widgets/card.dart';

class Videolist extends StatelessWidget {
  const Videolist({super.key, required onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Videos',
          style: TextStyle(
              color: Color(0xFF535353),
              fontFamily: 'Red Hat Display',
              fontSize: 18),
        ),
      ),
      body: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: CardWidget(
              gradient: false,
              button: true,
              width: 180,
              height: 280,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            '${data[index].mainimg}',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: const Text(""),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      '${data[index].name}',
                      // "Which component is used to compile ?",
                      maxLines: 2,
                      style: const TextStyle(
                          color: Color(0xFF535353),
                          fontFamily: 'Red Hat Display',
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        const Icon(BoxIcons.bx_bar_chart_alt_2, size: 16),
                        Text(
                          '${data[index].beginner}',
                          style: const TextStyle(
                              color: Color(0xFFADADAD),
                              fontFamily: 'Red Hat Display',
                              fontSize: 10),
                        ),
                        const Spacer(),
                        Text(
                          '${data[index].time}',
                          style: const TextStyle(
                              color: Color(0xFFADADAD),
                              fontFamily: 'Red Hat Display',
                              fontSize: 10),
                        ),
                        const Icon(BoxIcons.bx_timer, size: 16),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(BoxIcons.bx_play_circle, color: Colors.black),
                            Text(
                              "Watch Lecture",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Red Hat Display',
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => VideoPage(
                              model: data[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );

          //////////////////////////
        },
      ),
    );
  }
}
