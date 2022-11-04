import 'dart:ui';

import 'package:flutter/material.dart';

class BMIView extends StatefulWidget {
  const BMIView({Key? key}) : super(key: key);

  @override
  State<BMIView> createState() => _BMIViewState();
}

class _BMIViewState extends State<BMIView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090c22),
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: const Color(0xFF090c22),
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 170,
                    color: const Color(0xFF101427),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 100,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 170,
                    color: const Color(0xFF101427),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.female,
                          color: Colors.white,
                          size: 100,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF101427),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '183 CM',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w900),
                  ),
                  Slider(
                      min: 0,
                      max: 200,
                      value: 150,
                      thumbColor: const Color(0xFFea1556),
                      activeColor: const Color(0xFFfefeff),
                      onChanged: (value) {})
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 220,
                    color: const Color(0xFF101427),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'WAIGHT',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '78',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFF1c2033),
                              radius: 30,
                              child: Icon(Icons.remove, color: Colors.white,),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFF1c2033),
                              radius: 30,
                              child: Icon(Icons.add, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 220,
                    color: const Color(0xFF101427),
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
                          '19',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFF1c2033),
                              radius: 30,
                              child: Icon(Icons.remove, color: Colors.white,),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFF1c2033),
                              radius: 30,
                              child: Icon(Icons.add, color: Colors.white),
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
          Container(
            color: Color(0xFFea1556),
            width: double.infinity,
            height: 80,
            child: Center(
              child: Text('CALCULATE YOUR BMI',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
          )
        ],
      ),
    );
  }
}
