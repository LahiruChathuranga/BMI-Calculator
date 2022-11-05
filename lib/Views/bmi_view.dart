import 'dart:ui';
import 'dart:math';
import 'package:bmi_calculator/Components/gender_component.dart';
import 'package:bmi_calculator/Components/height_component.dart';
import 'package:bmi_calculator/Components/value_component.dart';
import 'package:flutter/material.dart';

class BMIView extends StatefulWidget {
  BMIView({Key? key}) : super(key: key);

  @override
  State<BMIView> createState() => _BMIViewState();
}

class _BMIViewState extends State<BMIView> {
  Color maleColor = Colors.white;
  Color feMaleColor = Colors.grey;
  double height = 150;
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
                GenderComponent(icon: Icons.male, name: 'MALE', color: maleColor, onTap: () {
                  setState(() {
                    maleColor = Colors.white;
                    feMaleColor = Colors.grey;
                  });
                },),
                SizedBox(
                  width: 8,
                ),
                GenderComponent(icon: Icons.male, name: 'FEMALE', color: feMaleColor, onTap: () {
                  setState(() {
                    maleColor = Colors.grey;
                    feMaleColor = Colors.white;
                  });
                },),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: HeightComponent(
              valueChanged: (value){
                setState(() {
                  height = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                ValueComponent(name: 'WEIGHT', valueChanged: (value){
                  setState(() {
                    weight = double.parse(value.toString());
                  });
                }),
                SizedBox(
                  width: 8,
                ),
                ValueComponent(name: 'AGE', valueChanged: (value){
                  setState(() {
                    age = double.parse(value.toString());
                  });
                })
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
              num heightbytwo = pow(height / 100, 2);
              print(height.toString());
              print(weight.toString());
              double BMI = weight / heightbytwo;
              print(BMI.toStringAsFixed(1));
              
            },
          )
        ],
      ),
    );
  }
}
