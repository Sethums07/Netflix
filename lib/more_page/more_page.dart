//import 'dart:js_util';

import 'package:flutter/material.dart';

class morepage extends StatefulWidget {
  const morepage({super.key});

  @override
  State<morepage> createState() => _morepageState();
}

class _morepageState extends State<morepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                child: Image.asset(
                  "assets/Group 66.png",
                  fit: BoxFit.fill,
                ),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 6),
              Container(
                child: Image.asset("assets/Group 67.png", fit: BoxFit.fill),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 6),
              Container(
                child: Image.asset("assets/Group 69.png", fit: BoxFit.fill),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 6),
              Container(
                child: Image.asset("assets/Group 68.png", fit: BoxFit.fill),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 6),
              Container(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(2)),
                height: 55,
                width: 67,
              )
            ]),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/bx_bxs-pencil.png", width: 15, height: 15),
              Text(
                "Manage Profiles",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(height: 5),
          Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 40),
                        Image.asset(
                          "assets/Group 71.png",
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 20),
                        Text("Tell friends about Netflix.",
                            style: TextStyle(
                                fontSize: 19.63433074951172,
                                fontWeight: FontWeight.w700,
                                color: Colors.white))
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus.bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa.id ut ipsum aliquam enim non posuere pulvinar diam",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10),
                    Text("Terms & Conditions",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 10.781095504760742,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 37,
                          width: 240,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Container(
                          child: Center(
                              child: Text("Copy Link",
                                  style: TextStyle(
                                    fontSize: 17.05908203125,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3)),
                          width: 96,
                          height: 42,
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/more1.png",
                          ),
                          height: 33,
                          width: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color(0xff2cb742)),
                        ),
                        Container(
                          height: 41,
                          width: 2,
                          color: const Color.fromARGB(255, 75, 73, 73),
                        ),
                        Container(
                          child: Image.asset("assets/more2.png"),
                          height: 33,
                          width: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color(0xff395185)),
                        ),
                        Container(
                          height: 41,
                          width: 2,
                          color: const Color.fromARGB(255, 75, 73, 73),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9)),
                          child: Image.asset("assets/more3.png"),
                          height: 33,
                          width: 36,
                        ),
                        Container(
                          height: 41,
                          width: 2,
                          color: const Color.fromARGB(255, 75, 73, 73),
                        ),
                        Column(
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/bx-dot-more4.png",
                              ),
                              height: 30,
                              width: 30,
                            ),
                            Text("More",
                                style: TextStyle(
                                    fontSize: 14.722221374511719,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(color: Color(0xff1a1a1a))),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  height: 26,
                  width: 26,
                  child: Image.asset("assets/tick-more5.png"),
                ),
                Text("My List",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.722221374511719,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
          SizedBox(height: 5),
          Divider(
            height: 3,
            color: const Color.fromARGB(255, 75, 73, 73),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text("App Settings ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.722221374511719,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(height: 15),
                Text("Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.722221374511719,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(height: 15),
                Text("Help",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.722221374511719,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(height: 15),
                Text("Sign Out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.722221374511719,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
