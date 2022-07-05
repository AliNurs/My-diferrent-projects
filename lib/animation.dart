import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Animations in Flutter',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween(begin: 90.0, end: 500.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
    controller.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          child: Image.asset('images/mycar.jpg'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
