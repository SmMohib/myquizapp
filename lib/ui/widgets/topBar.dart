import 'package:myquizapp/theme/box_icons_icons.dart';
import 'package:myquizapp/ui/widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/services.dart';

class TopBar extends StatefulWidget {
  const TopBar({
    Key? key,
    required this.controller,
    required this.expanded,
    required this.onMenuTap,
  }) : super(key: key);

  final TextEditingController controller;
  final bool expanded;
  final onMenuTap;

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      width: MediaQuery.of(context).size.width,
      height: widget.expanded
          ? MediaQuery.of(context).size.height * 0.35
          : MediaQuery.of(context).size.height * 0.19,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Hi,Sobur.",
                    style: TextStyle(
                        color: Color(0xFF343434),
                        fontSize: 24,
                        fontFamily: 'Red Hat Display',
                        fontWeight: material.FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    child: const material.CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://scontent.fdac41-1.fna.fbcdn.net/v/t39.30808-6/347856110_175671361796320_59527665140602258_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFPXg8okGny5g1jJXZEUCC8qUmJ--MHER-pSYn74wcRH8wcvYarfXAVN0bzUpk7k0VASiKa8b98pSQuKhrZBAGr&_nc_ohc=5DPy0Fd5FyYAX-WkOrj&_nc_ht=scontent.fdac41-1.fna&oh=00_AfBEBOaLVY4sTa2A9PECGM2EdQ7HnCXnokXRJWI-NMG1qA&oe=64703C6B'),
                    ),
                    onTap: widget.onMenuTap,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: CupertinoTextField(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: material.Colors.white,
                  boxShadow: [
                    const BoxShadow(
                      blurRadius: 25,
                      offset: Offset(0, 10),
                      color: Color(0x1A636363),
                    ),
                  ]),
              padding: const EdgeInsets.all(10),
              style: const TextStyle(
                  color: Color(0xFF343434),
                  fontSize: 18,
                  fontFamily: 'Red Hat Display'),
              enableInteractiveSelection: true,
              controller: widget.controller,
              expands: false,
              inputFormatters: [
                //  BlacklistingTextInputFormatter.singleLineFormatter
              ],
              keyboardType: TextInputType.text,
              suffix: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Icon(
                  BoxIcons.bx_search,
                  color: Color(0xFFADADAD),
                ),
              ),
              textInputAction: TextInputAction.search,
              textCapitalization: TextCapitalization.words,
              placeholder: "Search",
              placeholderStyle: const TextStyle(
                  color: Color(0xFFADADAD),
                  fontSize: 18,
                  fontFamily: 'Red Hat Display'),
            ),
          ),
          widget.expanded
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12),
                        // padding: const EdgeInsets.fromLTRB(15, 15, 10, 30),
                        child: CardWidget(
                          gradient: false,
                          button: true,
                          duration: 200,
                          border: tab == index
                              ? Border(
                                  bottom: BorderSide(
                                      color: tab == 0
                                          ? const Color(0xFF2828FF)
                                          : tab == 1
                                              ? const Color(0xFFFF2E2E)
                                              : tab == 2
                                                  ? const Color(0xFFFFD700)
                                                  : const Color(0xFF33FF33),
                                      width: 5),
                                )
                              : null,
                          child: Center(
                            child: Column(
                              mainAxisAlignment:
                                  material.MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(index == 0
                                    ? BoxIcons.bx_shape_circle
                                    : index == 1
                                        ? BoxIcons.bx_shape_polygon
                                        : index == 2
                                            ? BoxIcons.bx_shape_square
                                            : BoxIcons.bx_shape_triangle),
                                Text(index == 0
                                    ? "C"
                                    : index == 1
                                        ? "C++"
                                        : index == 2
                                            ? "Java"
                                            : "Python")
                              ],
                            ),
                          ),
                          func: () {
                            setState(() {
                              tab = index;
                            });
                          },
                        ),
                      );
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
