import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);

  final List texts = [
    'Bold',
    'Bold',
    'Mediym',
    'Mediym',
    'Light',
    'Light',
    'Back',
    'Back',
    'Regular',
    'Regular',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("My Second task"),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            //   alignment: Alignment.bottomCenter,
            color: Colors.lightGreenAccent.shade700,
            child: ListView.builder(
              // shrinkWrap: true,
              itemCount: texts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(68),
                  ),
                  margin: EdgeInsets.only(left: 8, right: 8),
                  child: Center(child: Text(texts[index])),
                  height: 32,
                  width: 60,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
