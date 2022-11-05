import 'package:flutter/material.dart';

class GenderComponent extends StatefulWidget {
  IconData icon;
  String name;
  Color color;
  VoidCallback onTap;

  GenderComponent({Key? key, required this.icon, required this.name, required this.color, required this.onTap}) : super(key: key);

  @override
  State<GenderComponent> createState() => _GenderComponentState();
}

class _GenderComponentState extends State<GenderComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.18,
          color: Color(0xFF101427),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.male,
                color: widget.color,
                size: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                widget.name,
                style: TextStyle(
                    color: widget.color,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        onTap: () {
          setState(() {
            widget.color = Colors.white;
            widget.onTap();
          });
        },
      ),
    );
  }
}
