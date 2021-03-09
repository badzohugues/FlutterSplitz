import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_splitz/router/router.dart';
import 'package:flutter_splitz/theme/splitz_color.dart';
import 'package:flutter_splitz/ui/component/splitz_circular_progress_indicator.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {

  bool isLoaderVisible = false;

  String svgName = 'assets/tmdb_logo.png';

  @override
  void initState() {
    super.initState();
    isLoaderVisible = true;
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 56.0, right: 56.0),
                  child: Image.asset(svgName)/*SvgPicture.asset(
                    svgName,
                    semanticsLabel: 'TMDb Logo',
                    color: Color(SplitzColors.GREEN_ACCENT),
                  )*/
              ),

              Visibility(
                child: Padding(
                    padding: EdgeInsets.only(top: 32.0),
                    child: SplitzCircularProgressIndicator().call(Color(SplitzColors.GREEN_ACCENT))
                ),

                visible: isLoaderVisible,
                maintainSize: false,
              )
            ],
          )
      ),
    );
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, () {
      isLoaderVisible = false;
      Navigator.of(context).pushReplacementNamed(TmDbRouter.HOME); // To show next page without keeping this page in stack
    });
  }

}