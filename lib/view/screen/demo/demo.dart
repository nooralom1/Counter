import 'dart:ui';

import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List icons = [
    Icons.dashboard_customize_outlined,
    Icons.person_outline,
    Icons.note_outlined,
    Icons.tv,
    Icons.radio,
    Icons.play_circle_outlined,
    Icons.calendar_month_sharp,
    Icons.coffee_outlined,
    Icons.star_border,
  ];
  List name = [
    "Business",
    "Community & Organisations",
    "Latest News",
    "Macedonian Tv",
    "Macedonian Radios",
    "Appski TV Series",
    "Events",
    "Cooking",
    "Tourism Macedonia",
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey,
                Colors.yellow,
              ],
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 100, sigmaY: 100, tileMode: TileMode.repeated),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "Welcome to Appski",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                        Text(
                          "Connecting the Macedonianpeople",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GridView.builder(
                      itemCount: icons.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 15,
                          childAspectRatio: 0.67),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: screenHeight * 0.15,
                          child: Column(
                            children: [
                              Container(
                                height: screenHeight * 0.14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                ),
                                child: Center(
                                  child: Icon(
                                    icons[index],
                                    color: Colors.white,
                                    size: 60,
                                  ),
                                ),
                              ),
                              Text(
                                name[index],
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                                maxLines: 2,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
