import 'package:flutter/material.dart';
import 'package:flutter_ui_day27/data.dart';
import 'package:flutter_ui_day27/lesson_detail.dart';

import 'lessonCat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon fab = Icon(
    Icons.bookmark,
  );
  int fabIconNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          'Lessons',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Image(
              image: AssetImage('assets/images/timer.png'),
              height: 40,
              width: 40,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 2.5,
                                  color: (index == 0)
                                      ? Color.fromRGBO(89, 10, 229, 1)
                                      : Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                cat[index].lessonCat,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: (index == 0)
                                        ? FontWeight.w700
                                        : FontWeight.w400,
                                    color: (index == 0)
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '·',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: (index != 5) ? Colors.grey : Colors.white),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                height: 800,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, a, b) => Lessondetail(
                                        lessonName: lesson[index],
                                      )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          height: 140,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              //background color of box
                                              BoxShadow(
                                                color: Colors.grey[400],
                                                blurRadius:
                                                    10.0, // soften the shadow
                                                spreadRadius:
                                                    0.0, //extend the shadow
                                                offset: Offset(
                                                  2.0, // Move to right 10  horizontally
                                                  2.0, // Move to bottom 10 Vertically
                                                ),
                                              )
                                            ],
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 20,
                                                        horizontal: 10),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                lesson[index]
                                                                    .lessonImg),
                                                            fit: BoxFit.cover),
                                                      ),
                                                      height: 80,
                                                      width: 80,
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        lesson[index]
                                                            .lessonName,
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight
                                                                  .w800,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        lesson[index]
                                                            .lessonDesc,
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors
                                                                .grey[600]),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.22,
                                                    height: 7,
                                                    decoration: BoxDecoration(
                                                        color: (index % 2 == 0)
                                                            ? Colors.green
                                                            : Colors.grey[400],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.22,
                                                    height: 7,
                                                    decoration: BoxDecoration(
                                                        color: (index % 2 == 0)
                                                            ? Colors.green
                                                            : Colors.grey[400],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.22,
                                                    height: 7,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey[400],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 330,
                                        top: 20,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (fabIconNumber ==
                                                  0) {
                                                fab = Icon(
                                                  Icons
                                                      .bookmark_outline,
                                                );
                                                fabIconNumber =
                                                1;
                                              } else {
                                                fab = Icon(Icons
                                                    .bookmark);
                                                fabIconNumber =
                                                0;
                                              }
                                            });
                                          },
                                          child: fab,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Icon(
                                (index % 2 == 0)
                                    ? Icons.lock_open_outlined
                                    : Icons.lock_outlined,
                                color: (index % 2 == 0)
                                    ? Colors.grey
                                    : Colors.grey[700],
                                size: 30,
                              )
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
