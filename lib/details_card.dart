import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String title;
  final String val;
  final String unit;

  const DetailsCard({
    super.key,
    required this.title,
    required this.val,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Text(
              val,
              style: TextStyle(
                color: Color(0xFF2B92E4),
                fontSize: 24,
              ),
            ),
            Text(
              unit,
              style: TextStyle(fontSize: 14, color: Color(0xFFAAAAAA)),
            ),
          ],
        ),
      ]),
    );
  }
}
