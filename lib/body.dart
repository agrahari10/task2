import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Hello Babu',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Find A ',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Workout',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Image.asset(
                    'images/dddd.jpg',
                    height: 200,
                    // width: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(130),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Image.asset(
                    'images/dddd.jpg',
                    height: 200,
                    // width: 2,
                  ),
                  Positioned(
                      top: 30,
                      right: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Legs ',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'and',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Glutes',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    ' workout',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'images/bar.jpeg',
                                    height: 10,
                                  ),
                                  Text(
                                    ' Advanced',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'images/abc.jpg',
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ' 45 min',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.22,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.55),
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Start Workout',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today's Activity",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Details',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_rounded),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          neumorphicCard(
                            title: 'STEPS',
                            subtitle: '1526',
                            icon: Icon(Icons.run_circle_outlined),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          neumorphicCard(
                            title: 'CALORIES',
                            subtitle: '829',
                            icon: Icon(FontAwesomeIcons.burn),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          neumorphicCard(
                            title: 'BPM',
                            subtitle: '88',
                            icon: Icon(FontAwesomeIcons.heart),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Daily Activity",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Details',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_rounded),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildNeumorphic_card2(day: 'MON', date: '09'),
                          SizedBox(
                            width: 25,
                          ),
                          buildNeumorphic_card2(day: 'SUN', date: '07'),
                          SizedBox(
                            width: 25,
                          ),
                          buildNeumorphic_card2(day: 'SAT', date: '06'),
                          SizedBox(
                            width: 25,
                          ),
                          buildNeumorphic_card2(day: 'FRI', date: '05'),
                          SizedBox(
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // height: 84,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildNeumorphic__card3(icon: Icon(Icons.home), name: 'Home'),
                  // SizedBox(
                  //   width: 25,
                  // ),
                  buildNeumorphic__card3(
                      icon: Icon(Icons.local_activity), name: 'Activity'),
                  // SizedBox(
                  //   width: 25,
                  // ),
                  buildNeumorphic__card3(
                      icon: Icon(Icons.settings), name: 'Settings'),
                  // SizedBox(
                  //   width: 25,
                  // ),
                  buildNeumorphic__card3(
                      icon: Icon(Icons.account_box_outlined), name: 'Profile'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Neumorphic buildNeumorphic__card3({String name, Icon icon}) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        depth: 8,
        color: Colors.grey[100],
      ),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: 80,
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    icon,
                    Text(name),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNeumorphic_card2({String day, String date}) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        depth: 5,
        color: Colors.grey[300],
      ),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 100,
        ),
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        margin: EdgeInsets.only(top: 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                day,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height * 0.01),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget neumorphicCard({Icon icon, String title, String subtitle}) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        depth: 8,
        color: Colors.grey[300],
      ),
      child: Container(
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 150,
        ),
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      icon,
                      Row(
                        children: [
                          Text(
                            title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Text(
                        subtitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
