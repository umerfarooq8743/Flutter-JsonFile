import 'dart:convert';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellowAccent,
        body: FutureBuilder(
            future:
                DefaultAssetBundle.of(context).loadString("asset/data.json"),
            builder: (context, snapshot) {
              var mydata = json.decode(snapshot.data.toString());
              return SingleChildScrollView(
                child: Container(
                  height: 1200,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(mydata["employees"][0]["id"]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(mydata["employees"][0]["name"]),
                            Text(mydata["employees"][0]["department"]),
                            Text(mydata["employees"][0]["email"]),
                            Text(mydata["employees"][0]["phone"]),
                            Text(mydata["employees"][0]["address"]),
                            Text(mydata["employees"][0]["city"]),
                            Text(mydata["employees"][0]["state"]),
                          ],
                        ),
                        Text(mydata["employees"][1]["id"]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(mydata["employees"][1]["name"]),
                            Text(mydata["employees"][1]["department"]),
                            Text(mydata["employees"][1]["email"]),
                            Text(mydata["employees"][1]["phone"]),
                            Text(mydata["employees"][1]["address"]),
                            Text(mydata["employees"][1]["city"]),
                            Text(mydata["employees"][1]["state"]),
                          ],
                        ),
                        Text(mydata["employees"][2]["id"]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(mydata["employees"][2]["name"]),
                            Text(mydata["employees"][2]["department"]),
                            Text(mydata["employees"][2]["email"]),
                            Text(mydata["employees"][2]["phone"]),
                            Text(mydata["employees"][2]["address"]),
                            Text(mydata["employees"][2]["city"]),
                            Text(mydata["employees"][2]["state"]),
                          ],
                        ),
                        Text(mydata["employees"][9]["id"]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(mydata["employees"][9]["name"]),
                            Text(mydata["employees"][9]["department"]),
                            Text(mydata["employees"][9]["email"]),
                            Text(mydata["employees"][9]["phone"]),
                            Text(mydata["employees"][9]["address"]),
                            Text(mydata["employees"][9]["city"]),
                            Text(mydata["employees"][9]["state"]),
                          ],
                        ),
                        Text(mydata["employees"][10]["id"]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(mydata["employees"][10]["name"]),
                            Text(mydata["employees"][10]["department"]),
                            Text(mydata["employees"][10]["email"]),
                            Text(mydata["employees"][10]["phone"]),
                            Text(mydata["employees"][10]["address"]),
                            Text(mydata["employees"][10]["city"]),
                            Text(mydata["employees"][10]["state"]),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
