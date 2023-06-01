import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/screens/demo.dart';
import 'package:untitled/screens/page_2.dart';


class Page_1 extends StatefulWidget {
  const Page_1({Key? key}) : super(key: key);

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 80, bottom: 80),
                    child: Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "C",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "ravel",
                          style: myStyle(
                              25, Colors.grey.shade600, FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: Text(
                      "Enjoy every good \nmoments",
                      style: myStyle(33, Colors.grey.shade700, FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Text(
                      "Keep the world adventurous forever a way \nto explore our beautiful planet",
                      style: myStyle(16, Colors.grey.shade700, FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page_2()));
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      padding:
                      EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        "Next",
                        style: myStyle(15, Colors.white, FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Positioned(
                    child: Transform.rotate(
                      angle: pi / 5,
                      child: Container(
                        margin: EdgeInsets.only(top: 200),
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: 1500,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(40))),
                      ),
                    )),
                Positioned(
                    child: Transform.rotate(
                      angle: pi / 5,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 350,
                        ),
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: 600,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(40))),
                      ),
                    )),
                Positioned(
                    top: 30,
                    left: 100,
                    child: Image.asset(
                      "images/man.png",
                      width: 200,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
