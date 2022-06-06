import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String StrExp = "", StrResult = "0.0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 28, 12),
                    child: Text(
                      StrExp == "" ? "Tab on the keypad to calc" : StrExp,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 28, 72),
                    child: Text(
                      StrResult,
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 36,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              getkeypad(),
            ],
          ),
        ),
      ),
    );
  }

  getkeypad() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          "7",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      onTap: () => updateExp("7"),
                    ),
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          "8",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        print("clicked");
                      },
                    ),
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          "9",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        print("clicked");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          "4",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        print("clicked");
                      },
                    ),
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          "5",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        print("clicked");
                      },
                    ),
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          "6",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        print("clicked");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          "1",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        print("clicked");
                      },
                    ),
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          "2",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        print("clicked");
                      },
                    ),
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          "3",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        print("clicked");
                      },
                    ),
                  ],
                ),
              ],
            ),
            Container(
              color: Colors.deepPurpleAccent.withAlpha(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.all(22),
                      child: Text(
                        "%",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple),
                      ),
                    ),
                    onTap: () {
                      print("clicked");
                    },
                  ),
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.all(22),
                      child: Text(
                        "X",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple),
                      ),
                    ),
                    onTap: () {
                      print("clicked");
                    },
                  ),
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.all(22),
                      child: Text(
                        "-",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple),
                      ),
                    ),
                    onTap: () {
                      print("clicked");
                    },
                  ),
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "+",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple),
                      ),
                    ),
                    onTap: () {
                      print("clicked");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: const Padding(
                padding: EdgeInsets.all(32),
                child: Text(
                  ".",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ),
              onTap: () {
                print("clicked");
              },
            ),
            InkWell(
              child: const Padding(
                padding: EdgeInsets.all(32),
                child: Text(
                  "0",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ),
              onTap: () {
                print("clicked");
              },
            ),
            Padding(
              padding: EdgeInsets.all(32),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.deepPurple,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: MaterialButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                onPressed: () {},
                child: Text(
                  "=",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  updateExp(String Strvalue) {
    setState(() {
      StrExp = StrExp + Strvalue;
    });
  }
}
