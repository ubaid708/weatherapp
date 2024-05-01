import 'dart:ui';

import 'package:app1/wigets/addinnal%20info.dart';
import 'package:app1/wigets/model.dart';
// import 'package:app1/wigets/model.dart';
import 'package:app1/wigets/weatherapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({sup          er.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  weatherApiClent clent = weatherApiClent();
  weather? data;
  Future getData() async {
    data = await clent.getCurrentWeather("karachi");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    clent.getCurrentWeather("karachi");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "GOOD MORNING",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark),
          ),
          body: FutureBuilder(
              future: getData(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(
                        40, 1.2 * kToolbarHeight, 40, 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-3, -0.3),
                            child: Container(
                              height: 300,
                              width: 300,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.purple),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(3, 0.3),
                            child: Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.purple),
                            ),
                          ),
                          BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 100.0, sigmaY: 100),
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              children: [
                                Image.asset("assets/haevyrain.png"),
                                const Center(
                                  child: Text(
                                    "${data!.temp}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 55,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/sun.png",
                                      scale: 8,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "SUN RISE",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("5:30 A:M",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700))
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/download.png",
                                      scale: 8,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "SUN SET",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("5:30 P:M",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700))
                                      ],
                                    )
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                addinalinfo(
                                  "24",
                                  "2",
                                  "1024",
                                  "24.0",
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }

                return Container();
              }))),
    );
  }
}
