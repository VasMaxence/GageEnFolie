import 'dart:math';
import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';

import 'gageChoice.dart';

class ShowUp extends StatefulWidget {
  final Widget child;
  final int delay;
  final _ShowUpState _anim = _ShowUpState();

  ShowUp({@required this.child, this.delay});

  void swapText() {
    _anim.newGage();
  }

  @override
  _ShowUpState createState() => _anim;
}

class _ShowUpState extends State<ShowUp> with TickerProviderStateMixin {
  AnimationController _animController;
  Animation<Offset> _animOffset;
  final TextEditingController textController = TextEditingController();
  String _gagetype;
  String _actualgage;
  final GageStats _stats = GageStats();

  @override
  void initState() {
    super.initState();

    _stats.getGageType();
    _actualgage = _stats.getGage();
    _gagetype = _stats.getType();

    _animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    final curve =
    CurvedAnimation(curve: Curves.decelerate, parent: _animController);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _animController.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay), () {
        _animController.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Animation<double> offsetAnimation =
    Tween(begin: 0.0, end: 24.0).chain(CurveTween(curve: Curves.elasticIn)).animate(_animController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animController.reverse();
        }
      });

    return AnimatedBuilder(
      animation: offsetAnimation,
      builder: (buildContext, child) {
        if (offsetAnimation.value < 0.0) print('${offsetAnimation.value + 8.0}');
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 0),
          padding: EdgeInsets.only(left: offsetAnimation.value + 24.0, right: 24.0 - offsetAnimation.value),
          child: new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: new Text(
                  _gagetype,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 45,
                      fontFamily: 'Sketch'
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              new Text(
                _actualgage,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      });
  }

  void newGage() {
    _animController.forward();
    _stats.getGageType();
    _actualgage = _stats.getGage();
    _gagetype = _stats.getType();
  }
}