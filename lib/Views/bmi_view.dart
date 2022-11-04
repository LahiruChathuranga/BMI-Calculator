import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

class BMIView extends StatefulWidget {
  BMIView({Key? key}) : super(key: key);

  @override
  State<BMIView> createState() => _BMIViewState();
}

class _BMIViewState extends State<BMIView> {
  Color maleColor = Colors.white;
  Color feMaleColor = Colors.grey;
  double height = 0;
  double weight = 0;
  double age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090c22),
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Color(0xFF090c22),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      color: Color(0xFF101427),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.male,
                            color: maleColor,
                            size: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                                color: maleColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        // change color of the icon and text
                        maleColor = Colors.white;
                        feMaleColor = Colors.grey;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      color: Color(0xFF101427),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.female,
                            color: feMaleColor,
                            size: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                                color: feMaleColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        // change the color of the icon and the text
                        feMaleColor = Colors.white;
                        maleColor = Colors.grey;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF101427),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        height.toInt().toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * 0.05,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Slider(
                      min: 0,
                      max: 200,
                      value: height,
                      thumbColor: Color(0xFFea1556),
                      activeColor: Color(0xFFfefeff),
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      })
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: Color(0xFF101427),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          weight.toInt().toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.05,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF1c2033),
                                radius: 30,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight = weight - 1;
                                  }
                                });
                              },
                            ),
                            GestureDetector(
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF1c2033),
                                radius: 30,
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                              onTap: () {
                                setState(() {
                                  weight = weight + 1;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    color: Color(0xFF101427),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          age.toInt().toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.05,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF1c2033),
                                radius: 30,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  if (age > 0) {
                                    age = age - 1;
                                  }
                                });
                              },
                            ),
                            GestureDetector(
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF1c2033),
                                radius: 30,
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                              onTap: () {
                                setState(() {
                                  age = age + 1;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            child: Container(
              color: Color(0xFFea1556),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(
                child: Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              // calculate BMI here
              num heightSqre = pow(height / 100, 2);
              double BMI = weight / heightSqre;
              print(BMI.toStringAsFixed(1));
            },
          )
        ],
      ),
    );
  }
}
