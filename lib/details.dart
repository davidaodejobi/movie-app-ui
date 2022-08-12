import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int rating = 2;
  int goldenStar = 0;
  int silverStar = 0;

  calculateRatingStar() {
    if (rating == 5) {
      goldenStar = 5;
      silverStar = 0;
    } else {
      goldenStar = rating;
      silverStar = 5 - rating;
    }
  }

  List<String> images = [
    'assets/images/actor1.jpg',
    'assets/images/actor2.jpg',
    'assets/images/actor3.png',
    'assets/images/actress1.jpg',
    'assets/images/actress2.jpg',
    'assets/images/actress3.jpg',
  ];

  //pick random image from list

  @override
  void initState() {
    calculateRatingStar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2 - 70;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: const [
                0.1,
                1.5,
              ],
              colors: [
                Colors.black,
                Colors.black.withOpacity(0.75),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 400,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/movie4.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            margin: const EdgeInsets.only(left: 20, top: 20),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF082EB4),
                                  Color(0xFF640707),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [
                                  0.2,
                                  1.0,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/svgs/arrow-left.svg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            margin: const EdgeInsets.only(right: 20, top: 20),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF082EB4),
                                  Color(0xFF640707),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [
                                  0.2,
                                  1.0,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/svgs/favorite.svg',
                                height: 25,
                                width: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -40,
                      right: 0,
                      child: Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.only(right: 20, top: 20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF082EB4),
                              Color(0xFF640707),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [
                              0.2,
                              1.0,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/svgs/play.svg',
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'The Lorem Ipsum',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          for (int i = 0; i < goldenStar; i++)
                            const Icon(
                              Icons.star,
                              color: Color(0xFFF2A33A),
                              size: 20,
                            ),
                          for (int i = 0; i < silverStar; i++)
                            const Icon(
                              Icons.star,
                              color: Color(0xFFCCCCCC),
                              size: 20,
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Lorem Ipsum is ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 30,
                        ),
                        child: Divider(
                          color: Colors.white38,
                          thickness: 2,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Casts',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 70,
                              child: Stack(children: [
                                Positioned(
                                  top: 7.5,
                                  right: 0,
                                  bottom: 7.5,
                                  child: Container(
                                    height: 55,
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade700,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'John',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Doe',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    margin: const EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          images[Random()
                                              .nextInt(images.length - 1)],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 70,
                              child: Stack(children: [
                                Positioned(
                                  top: 7.5,
                                  right: 0,
                                  bottom: 7.5,
                                  child: Container(
                                    height: 55,
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade700,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'John',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Doe',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    margin: const EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          images[Random()
                                              .nextInt(images.length - 1)],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 70,
                              child: Stack(children: [
                                Positioned(
                                  top: 7.5,
                                  right: 0,
                                  bottom: 7.5,
                                  child: Container(
                                    height: 55,
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade700,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'John',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Doe',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    margin: const EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          images[Random()
                                              .nextInt(images.length - 1)],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 70,
                              child: Stack(children: [
                                Positioned(
                                  top: 7.5,
                                  right: 0,
                                  bottom: 7.5,
                                  child: Container(
                                    height: 55,
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade700,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'John',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Doe',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    margin: const EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          images[Random()
                                              .nextInt(images.length - 1)],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
