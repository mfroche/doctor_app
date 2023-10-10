import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final String image;
  final String topic;
  final Color color;

  const TopicCard({
    super.key,
    required this.image,
    required this.topic,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        width: 74,
        child: Column(
          children: <Widget>[
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(10)),
              child: Image.asset(image),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              topic,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
