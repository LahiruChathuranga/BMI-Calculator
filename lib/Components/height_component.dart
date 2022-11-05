import 'package:flutter/material.dart';

class HeightComponent extends StatefulWidget {
  Function(double) valueChanged;

  HeightComponent({required this.valueChanged});

  @override
  State<HeightComponent> createState() => _HeightComponentState();
}

class _HeightComponentState extends State<HeightComponent> {

  double height = 150.0;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  widget.valueChanged(height);
                });
              })
        ],
      ),
    );
  }
}
