import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'shake.dart';

class Game extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Game();
  }
}

class _Game extends State<Game> with TickerProviderStateMixin {
  static final List<ImageProvider> _bg = [
    AssetImage("assets/blue-background-game.png"),
    AssetImage("assets/purple-background-game.png"),
    AssetImage("assets/yellow-background-game.png"),
    AssetImage("assets/green-background-game.png"),
    AssetImage("assets/red-background-game.png")
  ];
  final ShowUp _gagecontent = ShowUp(
    child: null,
    delay: 500,
  );
  ImageProvider _bgtmp = _bg[0];
  bool _visibilty;
  static AudioCache player = new AudioCache();

  @override
  void initState() {
    _visibilty = true;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: _bgtmp,
            fit: BoxFit.cover,
          ),
        ),
        child: new Center(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Container(height: (MediaQuery.of(context).size.height / 5),),
              new Container(
                child: new AnimatedOpacity(
                  opacity: _visibilty ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 100),
                  child: new Container(
                    width: MediaQuery.of(context).size.width,
                    height: (MediaQuery.of(context).size.height / 5) * 3,
                    child: new Center(
                      child: new Container(
                        child: _gagecontent,
                        margin: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
                      ),
                    ),
                  ),
                ),
              ),
              new Container(
                child: new Center(
                    child: new MaterialButton(
                      onPressed: () {
                        setState(() {
                          _bgtmp = _bg[new Random().hashCode % _bg.length];
                          _gagecontent.swapText();
                        });
                      },
                      child: new Icon(
                        Icons.videogame_asset,
                        color: Colors.black,
                        size: 45,
                      ),
                      shape: new CircleBorder(),
                      elevation: 2.0,
                      padding: EdgeInsets.all(15),
                      color: Colors.redAccent,
                      splashColor: Colors.purple,
                    )
                ),
                color: Colors.transparent,
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}