import 'package:flutter/material.dart';

class ValueComponent extends StatefulWidget {
  String name;
  Function(int) valueChanged;

  ValueComponent({Key? key, required this.name, required this.valueChanged})
      : super(key: key);

  @override
  State<ValueComponent> createState() => _ValueComponentState();
}

class _ValueComponentState extends State<ValueComponent> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        color: Color(0xFF101427),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              value.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height * 0.05,
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
                      if (value > 0) {
                        value = value - 1;
                        widget.valueChanged(value);
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
                      value = value + 1;
                      widget.valueChanged(value);
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
