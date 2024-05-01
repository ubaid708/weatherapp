import 'package:flutter/material.dart';

Widget addinalinfo(
    String wind, String humidity, String pressure, String feel_like) {
  return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.0),
      child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "wind",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text("pressure",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.white))
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "$wind",
                                style:const TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                             const SizedBox(
                                height: 17,
                              ),
                              Text("$pressure",
                                  style:const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18,
                                      color: Colors.white)),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "humidity",
                                style:const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                             const SizedBox(
                                height: 17,
                              ),
                              Text("feel_like",
                                  style:const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.white)),
                            ],
                          )
                          ,
                          SizedBox(width:10,),
                          Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "$humidity",
                                style:const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                             const SizedBox(
                                height: 17,
                              ),
                              Text("$feel_like",
                                  style:const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.white)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ])
          ],
          
           ),
        ],
        ),
        ],
        ),
        ])]));
}
