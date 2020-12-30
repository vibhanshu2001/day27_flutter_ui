import 'package:flutter/material.dart';

import 'data.dart';

class Lessondetail extends StatelessWidget {
  final LessonInfo lessonName;

  const Lessondetail({Key key, this.lessonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        )),
      ),
      body: Center(
        child: Text(
          lessonName.lessonName,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        ),
      ),
    );
  }
}
