import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class Rule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Rule();
  }
}

class _Rule extends State<Rule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/green-background-game.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: new SingleChildScrollView(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new Image.asset("assets/logo.png"),
                  margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, MediaQuery.of(context).size.height / 15, MediaQuery.of(context).size.width / 8, 10),
                  height: MediaQuery.of(context).size.height / 5,
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 10,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Si tu te trompe de prénom: 1 gage",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Si tu perds à une activité: 1 gage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Si tu refuse de plonger dans la piscine: 1 gage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Si tu refuse un gage: 2 gages",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Si tu perds un défi (comme une merde): 2 gage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Si tu perds un défi: 1 gage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Si tu arrive en retard: 1 gage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Si dieu le décide: 1 gage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Si minimum 30% des joueurs sont OK: 1 gage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 7,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Tu veux refuser un gage? t'as cru que c'était la fête ici? prends en un deuxième en plus.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 7,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Dans le cas où le gage est tropn fort pour toi, tu peux demander ta grace à l'hôte et en prendre un autre",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 7,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 8, 0,
                      MediaQuery.of(context).size.width / 8, 0),
                  child: new Text(
                    "Tu te sens fort(e), et tu aimerais donner ce gage à quelqu'un, alors défi, si tu gagne il prend le gage, sinon tu en prends un de plus :D",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.left,
                  ),
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
                                Navigator.pop(context);
                              });
                            },
                            child: new Text(
                              "Retour",
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
      ),
    );
  }
}