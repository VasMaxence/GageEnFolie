import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'game.dart';
import 'rule.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Trainig App",
      theme: new ThemeData(
          primarySwatch: Colors.yellow
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/blue-background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Image.asset("assets/logo.png"),
                margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, MediaQuery.of(context).size.height / 15, MediaQuery.of(context).size.width / 8, 10),
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
              ),
              new Container(
                child: new Center(
                  child: ClipRRect(
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(child: AnimatedBackground()),
                        new MaterialButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Game()));
                            });
                          },
                          child: new Text(
                            "Jouer",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                fontFamily: 'Sketch'
                            ),
                          ),
                          elevation: 5.0,
                          padding: EdgeInsets.fromLTRB(45, 20, 45, 20),
                          splashColor: Colors.pinkAccent,
                        ),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                height: (MediaQuery.of(context).size.height / 5) * 2,
                width: MediaQuery.of(context).size.width,
              ),
              new Container(
                child: new Center(
                  child: ClipRRect(
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(child: AnimatedBackgroundRegle()),
                        new MaterialButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Rule()));
                            });
                          },
                          child: new Text(
                            "Règles",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                fontFamily: 'Sketch'
                            ),
                          ),
                          elevation: 5.0,
                          padding: EdgeInsets.fromLTRB(45, 20, 45, 20),
                          splashColor: Colors.pinkAccent,
                        ),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                height: (MediaQuery.of(context).size.height / 5),
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 2),
          ColorTween(begin: Colors.redAccent.shade200, end: Colors.orangeAccent.shade200)),
      Track("color2").add(Duration(seconds: 2),
          ColorTween(begin: Color.fromRGBO(218, 165, 32, 1), end: Colors.redAccent.shade200))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [animation["color1"], animation["color2"]])),
        );
      },
    );
  }
}

class AnimatedBackgroundRegle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 2),
          ColorTween(begin: Colors.green.shade600, end: Colors.pink.shade600)),
      Track("color2").add(Duration(seconds: 2),
          ColorTween(begin: Colors.pink.shade600, end: Colors.green.shade600))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [animation["color1"], animation["color2"]])),
        );
      },
    );
  }
}
