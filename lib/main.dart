import 'package:myquizapp/ui/pages/onboarding1.dart';
import 'package:myquizapp/ui/pages/undefinedScreen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';


late SharedPreferences prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: "AIzaSyCGhg4Xk8pfGqOfSL5XL9JrnM9R-iYoUto",
  //         authDomain: "fq-olp.firebaseapp.com",
  //         projectId: "fq-olp",
  //         storageBucket: "fq-olp.appspot.com",
  //         messagingSenderId: "248324705249",
  //         appId: "1:248324705249:web:d93cc8029e760e244120a0"));
  SharedPreferences.getInstance().then((prefs) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((value) => runApp(
              RestartWidget(
                child: MyApp(),
              ),
            ));
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // void getLoginStatus() async {
  //   prefs = await SharedPreferences.getInstance();
  //   globals.gAuth.googleSignIn.isSignedIn().then((value) {
  //     prefs.setBool("isLoggedin", value);
  //   });
  // }

  @override
  void initState() {
    //  getLoginStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //  onGenerateRoute: router.generateRoute,
      onUnknownRoute: (settings) => CupertinoPageRoute(
          builder: (context) => UndefinedScreen(
                name: settings.name,
              )),
      // theme: Provider.of<ThemeModel>(context).currentTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Onboarding()),
      // home: Youtubedemo(),
      
    );
  }
}

class RestartWidget extends StatefulWidget {
  RestartWidget({this.child});

  final Widget? child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()!.restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}

