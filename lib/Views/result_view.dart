import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  double height;
  double weight;
  VoidCallback onTap;

  ResultView({required this.height, required this.weight, required this.onTap});

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Result',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.045),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF1d1f33),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text(
                          getBMIType(calculateBMI()),
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.026),
                        ),
                      ),
                      Text(
                        calculateBMI(),
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.135,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Normal BMI range',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.026),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          '18.5 - 25 kg/m2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.024),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          getBMIMessage(calculateBMI()),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.024),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                              color: Color(0xFF191a2e),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Text(
                            'SAVE RESULT',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
                'RE-CALCULATE YOUR BMI',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          onTap: () {
            widget.onTap();
          },
        )
      ],
    );
  }

  String calculateBMI() {
    num heightbytwo = pow(widget.height / 100, 2);
    double BMI = widget.weight / heightbytwo;
    print(BMI.toStringAsFixed(1));
    return BMI.toStringAsFixed(1);
  }

  String getBMIType(String bmiValue) {
    double _bmiValue = double.parse(bmiValue);
    if (_bmiValue < 18.5) {
      return 'Under Weight';
    } else if ((18.5 <_bmiValue) && (_bmiValue < 24.9)) {
      return 'Healthy Weight';
    } else if (_bmiValue>25) {
      return 'Over Weight';
    } else {
      return "Unknown";
    }

  }

  String getBMIMessage(String bmiValue) {
    double _bmiValue = double.parse(bmiValue);
    if (_bmiValue < 18.5) {
      return 'You are Under Weight, Please contact a Doctor.';
    } else if ((18.5 <_bmiValue) && (_bmiValue < 24.9)) {
      return 'You have normal body weight. Good job!';
    } else if (_bmiValue>25) {
      return 'You are Over Weight, Please do a diet.';
    } else {
      return "Unknown";
    }
  }
}
