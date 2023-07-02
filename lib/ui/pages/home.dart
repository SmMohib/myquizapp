// ignore_for_file: library_private_types_in_public_api

import 'dart:ui';
import 'package:myquizapp/listQuiz/models/data.dart';
import 'package:myquizapp/ui/pages/video.dart';
import 'package:myquizapp/ui/widgets/card.dart';
import 'package:myquizapp/ui/widgets/overlay.dart';
import 'package:myquizapp/theme/box_icons_icons.dart';
import 'package:myquizapp/theme/config.dart';
import 'package:myquizapp/ui/pages/leaderboard.dart';
import 'package:myquizapp/ui/pages/planner.dart';
import 'package:myquizapp/ui/pages/videos.dart';
import 'package:myquizapp/ui/widgets/sectionHeader.dart';
import 'package:myquizapp/ui/widgets/topBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class Home extends StatefulWidget {
  final onMenuTap;
  Home({this.onMenuTap});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabNo = 0;
  late bool overlayVisible;
  CupertinoTabController? controller;
  @override
  void initState() {
    overlayVisible = false;
    controller = CupertinoTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        CupertinoTabScaffold(
          backgroundColor: Colors().secondColor(1),
          controller: controller,
          tabBar: CupertinoTabBar(
            onTap: (value) {
              setState(() {
                tabNo = value;
              });
            },
            activeColor: material.Colors.lightBlue,
            inactiveColor: const Color(0xFFADADAD),
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_home_circle), label: "Home"),
              const BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_calendar), label: "Planner"),
              BottomNavigationBarItem(icon: Container()),
              const BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bxs_videos), label: "Videos"),
              const BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_stats), label: "Leaderboard"),
            ],
          ),
          tabBuilder: (context, index) => (index == 0)
              ? HomePage(
                  onMenuTap: widget.onMenuTap,
                )
              : (index == 1)
                  ? PlannerPage(
                      onMenuTap: widget.onMenuTap,
                    )
                  : (index == 2)
                      ? Container(
                          color: CupertinoColors.activeOrange,
                        )
                      : (index == 3)
                          ? Videolist(
                              onMenuTap: widget.onMenuTap,
                            )
                          : LeaderboardPage(
                              onMenuTap: widget.onMenuTap,
                            ),
        ),
        Positioned(
            bottom: 0,
            child: GestureDetector(
              child: const SizedBox(
                height: 60,
                width: 80,
                child: Text(""),
              ),
              onTap: () {},
            )),
        overlayVisible ? OverlayWidget() : Container(),
        Positioned(
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFABDCFF),
                      Color(0xFF0396FF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 25,
                        color: const Color(0xFF03A9F4).withOpacity(0.4),
                        offset: const Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(500)),
              child: material.FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: material.Colors.transparent,
                  child: overlayVisible
                      ? const Icon(material.Icons.close)
                      : const Icon(BoxIcons.bx_pencil),
                  onPressed: () {
                    setState(() {
                      overlayVisible = !overlayVisible;
                    });
                  }),
            )),
      ],
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  final onMenuTap;
  HomePage({
    Key? key,
    required this.onMenuTap,
  }) : super(key: key);

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors().secondColor(1),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverFixedExtentList(
                    delegate: SliverChildListDelegate.fixed([Container()]),
                    itemExtent: MediaQuery.of(context).size.height * 0.33),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Recommended Lectures',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    ////////////////////////////////
                    width: MediaQuery.of(context).size.width,
                    height: 265,
                    // child:  VideoCard(),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const material.EdgeInsets.all(10.0),
                          child: CardWidget(
                            gradient: false,
                            button: true,
                            width: 180,
                            child: material.Column(
                              mainAxisAlignment:
                                  material.MainAxisAlignment.start,
                              children: <material.Widget>[
                                material.Container(
                                  width: 180,
                                  height: 110,
                                  decoration: material.BoxDecoration(
                                    image: material.DecorationImage(
                                        image: material.AssetImage(
                                          '${data[index].mainimg}',
                                        ),
                                        fit: material.BoxFit.cover),
                                    borderRadius:
                                        const material.BorderRadius.only(
                                      topLeft: material.Radius.circular(10),
                                      topRight: material.Radius.circular(10),
                                    ),
                                  ),
                                  child: const material.Text(""),
                                ),
                                material.Padding(
                                  padding: const material.EdgeInsets.all(8.0),
                                  child: material.Text(
                                    overflow: TextOverflow.ellipsis,
                                    '${data[index].name}',
                                    // "Which component is used to compile ?",
                                    maxLines: 2,
                                    style: const material.TextStyle(
                                        color: material.Color(0xFF535353),
                                        fontFamily: 'Red Hat Display',
                                        fontSize: 16),
                                  ),
                                ),
                                material.Padding(
                                  padding: const material.EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: material.Row(
                                    children: <material.Widget>[
                                      const material.Icon(
                                          BoxIcons.bx_bar_chart_alt_2,
                                          size: 16),
                                      material.Text(
                                        '${data[index].beginner}',
                                        style: const material.TextStyle(
                                            color: material.Color(0xFFADADAD),
                                            fontFamily: 'Red Hat Display',
                                            fontSize: 10),
                                      ),
                                      const material.Spacer(),
                                      material.Text(
                                        '${data[index].time}',
                                        style: const material.TextStyle(
                                            color: material.Color(0xFFADADAD),
                                            fontFamily: 'Red Hat Display',
                                            fontSize: 10),
                                      ),
                                      const material.Icon(BoxIcons.bx_timer,
                                          size: 16),
                                    ],
                                  ),
                                ),
                                const material.Spacer(),
                                material.Padding(
                                  padding:
                                      const material.EdgeInsets.only(top: 6.0),
                                  child: material.GestureDetector(
                                    child: material.Container(
                                      padding:
                                          const material.EdgeInsets.fromLTRB(
                                              0, 14, 0, 14),
                                      decoration: material.BoxDecoration(
                                          gradient: Colors().waves),
                                      child: const material.Row(
                                        mainAxisAlignment: material
                                            .MainAxisAlignment.spaceEvenly,
                                        children: <material.Widget>[
                                          material.Icon(BoxIcons.bx_play_circle,
                                              color: material.Colors.white),
                                          material.Text(
                                            "Watch Lecture",
                                            style: material.TextStyle(
                                                color: material.Colors.white,
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
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Revision Lectures',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 265,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const material.EdgeInsets.all(10.0),
                          child: CardWidget(
                            gradient: false,
                            button: true,
                            width: 180,
                            child: material.Column(
                              mainAxisAlignment:
                                  material.MainAxisAlignment.start,
                              children: <material.Widget>[
                                material.Container(
                                  width: 180,
                                  height: 110,
                                  decoration:  material.BoxDecoration(
                                    image: material.DecorationImage(
                                        image: AssetImage(
                                           // 'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210317130050/Dart-Tutorial.png'
                                             '${data[index].mainimg}',
                                            ),
                                        fit: material.BoxFit.cover),
                                    borderRadius:
                                        const material.BorderRadius.only(
                                      topLeft: material.Radius.circular(10),
                                      topRight: material.Radius.circular(10),
                                    ),
                                  ),
                                  child: const material.Text(""),
                                ),
                                material.Padding(
                                  padding: const material.EdgeInsets.all(8.0),
                                  child: material.Text(
                                    overflow: TextOverflow.ellipsis,
                                    '${data[index].name}',
                                    // "Which component is used to compile ?",
                                    maxLines: 2,
                                    style: const material.TextStyle(
                                        color: material.Color(0xFF535353),
                                        fontFamily: 'Red Hat Display',
                                        fontSize: 16),
                                  ),
                                ),
                                material.Padding(
                                  padding: const material.EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: material.Row(
                                    children: <material.Widget>[
                                      const material.Icon(
                                          BoxIcons.bx_bar_chart_alt_2,
                                          size: 16),
                                      material.Text(
                                        '${data[index].beginner}',
                                        style: const material.TextStyle(
                                            color: material.Color(0xFFADADAD),
                                            fontFamily: 'Red Hat Display',
                                            fontSize: 10),
                                      ),
                                      const material.Spacer(),
                                      material.Text(
                                        '${data[index].time}',
                                        style: const material.TextStyle(
                                            color: material.Color(0xFFADADAD),
                                            fontFamily: 'Red Hat Display',
                                            fontSize: 10),
                                      ),
                                      const material.Icon(BoxIcons.bx_timer,
                                          size: 16),
                                    ],
                                  ),
                                ),
                                const material.Spacer(),
                                material.Padding(
                                  padding:
                                      const material.EdgeInsets.only(top: 6.0),
                                  child: material.GestureDetector(
                                    child: material.Container(
                                      padding:
                                          const material.EdgeInsets.fromLTRB(
                                              0, 14, 0, 14),
                                      decoration: material.BoxDecoration(
                                          gradient: Colors().waves),
                                      child: const material.Row(
                                        mainAxisAlignment: material
                                            .MainAxisAlignment.spaceEvenly,
                                        children: <material.Widget>[
                                          material.Icon(BoxIcons.bx_play_circle,
                                              color: material.Colors.white),
                                          material.Text(
                                            "Watch Lecture",
                                            style: material.TextStyle(
                                                color: material.Colors.white,
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
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: TopBar(
              controller: controller,
              expanded: true,
              onMenuTap: onMenuTap,
            ),
          )
        ],
      ),
    );
  }
}
